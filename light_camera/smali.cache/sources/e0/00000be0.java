package net.hockeyapp.android.tasks;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.StrictMode;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.UUID;
import net.hockeyapp.android.Constants;
import net.hockeyapp.android.R;
import net.hockeyapp.android.listeners.DownloadFileListener;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class DownloadFileTask extends AsyncTask<Void, Integer, Long> {
    protected static final int MAX_REDIRECTS = 6;
    protected Context mContext;
    protected DownloadFileListener mNotifier;
    protected ProgressDialog mProgressDialog;
    protected String mUrlString;
    protected String mFilename = UUID.randomUUID() + ".apk";
    protected String mFilePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Download";
    private String mDownloadErrorMessage = null;

    public DownloadFileTask(Context context, String str, DownloadFileListener downloadFileListener) {
        this.mContext = context;
        this.mUrlString = str;
        this.mNotifier = downloadFileListener;
    }

    public void attach(Context context) {
        this.mContext = context;
    }

    public void detach() {
        this.mContext = null;
        this.mProgressDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Long doInBackground(Void... voidArr) {
        BufferedInputStream bufferedInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            URLConnection createConnection = createConnection(new URL(getURLString()), 6);
            createConnection.connect();
            int contentLength = createConnection.getContentLength();
            String contentType = createConnection.getContentType();
            if (contentType != null && contentType.contains("text")) {
                this.mDownloadErrorMessage = "The requested download does not appear to be a file.";
                return 0L;
            }
            File file = new File(this.mFilePath);
            if (!file.mkdirs() && !file.exists()) {
                throw new IOException("Could not create the dir(s):" + file.getAbsolutePath());
            }
            File file2 = new File(file, this.mFilename);
            bufferedInputStream = new BufferedInputStream(createConnection.getInputStream());
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[1024];
                        long j = 0;
                        while (true) {
                            int read = bufferedInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            j += read;
                            publishProgress(Integer.valueOf(Math.round((((float) j) * 100.0f) / contentLength)));
                            fileOutputStream2.write(bArr, 0, read);
                        }
                        fileOutputStream2.flush();
                        Long valueOf = Long.valueOf(j);
                        try {
                            fileOutputStream2.close();
                            bufferedInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        return valueOf;
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                                return 0L;
                            }
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        return 0L;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                                throw th;
                            }
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e5) {
                e = e5;
            }
        } catch (IOException e6) {
            e = e6;
            bufferedInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
        }
    }

    protected void setConnectionProperties(HttpURLConnection httpURLConnection) {
        httpURLConnection.addRequestProperty("User-Agent", Constants.SDK_USER_AGENT);
        httpURLConnection.setInstanceFollowRedirects(true);
        if (Build.VERSION.SDK_INT <= 9) {
            httpURLConnection.setRequestProperty("connection", "close");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public URLConnection createConnection(URL url, int i) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        setConnectionProperties(httpURLConnection);
        int responseCode = httpURLConnection.getResponseCode();
        if ((responseCode == 301 || responseCode == 302 || responseCode == 303) && i != 0) {
            URL url2 = new URL(httpURLConnection.getHeaderField("Location"));
            if (!url.getProtocol().equals(url2.getProtocol())) {
                httpURLConnection.disconnect();
                return createConnection(url2, i - 1);
            }
            return httpURLConnection;
        }
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        try {
            if (this.mProgressDialog == null) {
                this.mProgressDialog = new ProgressDialog(this.mContext);
                this.mProgressDialog.setProgressStyle(1);
                this.mProgressDialog.setMessage("Loading...");
                this.mProgressDialog.setCancelable(false);
                this.mProgressDialog.show();
            }
            this.mProgressDialog.setProgress(numArr[0].intValue());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Long l) {
        String str;
        if (this.mProgressDialog != null) {
            try {
                this.mProgressDialog.dismiss();
            } catch (Exception unused) {
            }
        }
        if (l.longValue() > 0) {
            this.mNotifier.downloadSuccessful(this);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.fromFile(new File(this.mFilePath, this.mFilename)), "application/vnd.android.package-archive");
            intent.setFlags(268435456);
            StrictMode.VmPolicy vmPolicy = null;
            if (Build.VERSION.SDK_INT >= 24) {
                vmPolicy = StrictMode.getVmPolicy();
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().penaltyLog().build());
            }
            this.mContext.startActivity(intent);
            if (vmPolicy != null) {
                StrictMode.setVmPolicy(vmPolicy);
                return;
            }
            return;
        }
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
            builder.setTitle(R.string.hockeyapp_download_failed_dialog_title);
            if (this.mDownloadErrorMessage == null) {
                str = this.mContext.getString(R.string.hockeyapp_download_failed_dialog_message);
            } else {
                str = this.mDownloadErrorMessage;
            }
            builder.setMessage(str);
            builder.setNegativeButton(R.string.hockeyapp_download_failed_dialog_negative_button, new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.tasks.DownloadFileTask.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    DownloadFileTask.this.mNotifier.downloadFailed(DownloadFileTask.this, false);
                }
            });
            builder.setPositiveButton(R.string.hockeyapp_download_failed_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.tasks.DownloadFileTask.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    DownloadFileTask.this.mNotifier.downloadFailed(DownloadFileTask.this, true);
                }
            });
            builder.create().show();
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getURLString() {
        return this.mUrlString + "&type=apk";
    }
}