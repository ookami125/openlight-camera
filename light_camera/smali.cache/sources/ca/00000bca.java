package net.hockeyapp.android.objects;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import net.hockeyapp.android.Constants;
import net.hockeyapp.android.utils.HockeyLog;
import org.apache.commons.io.IOUtils;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class CrashDetails {
    public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.US);
    private static final String FIELD_APP_CRASH_DATE = "Date";
    private static final String FIELD_APP_PACKAGE = "Package";
    private static final String FIELD_APP_START_DATE = "Start Date";
    private static final String FIELD_APP_VERSION_CODE = "Version Code";
    private static final String FIELD_APP_VERSION_NAME = "Version Name";
    private static final String FIELD_CRASH_REPORTER_KEY = "CrashReporter Key";
    private static final String FIELD_DEVICE_MANUFACTURER = "Manufacturer";
    private static final String FIELD_DEVICE_MODEL = "Model";
    private static final String FIELD_FORMAT = "Format";
    private static final String FIELD_FORMAT_VALUE = "Xamarin";
    private static final String FIELD_OS_BUILD = "Android Build";
    private static final String FIELD_OS_VERSION = "Android";
    private static final String FIELD_THREAD_NAME = "Thread";
    private static final String FIELD_XAMARIN_CAUSED_BY = "Xamarin caused by: ";
    private Date appCrashDate;
    private String appPackage;
    private Date appStartDate;
    private String appVersionCode;
    private String appVersionName;
    private final String crashIdentifier;
    private String deviceManufacturer;
    private String deviceModel;
    private String format;
    private Boolean isXamarinException;
    private String osBuild;
    private String osVersion;
    private String reporterKey;
    private String threadName;
    private String throwableStackTrace;

    public CrashDetails(String str) {
        this.crashIdentifier = str;
    }

    public CrashDetails(String str, Throwable th) {
        this(str);
        this.isXamarinException = false;
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        this.throwableStackTrace = stringWriter.toString();
    }

    public CrashDetails(String str, Throwable th, String str2, Boolean bool) {
        this(str);
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        this.isXamarinException = true;
        setFormat(FIELD_FORMAT_VALUE);
        if (bool.booleanValue()) {
            printWriter.print(FIELD_XAMARIN_CAUSED_BY);
            th.printStackTrace(printWriter);
        } else if (!TextUtils.isEmpty(str2)) {
            th.printStackTrace(printWriter);
            printWriter.print(FIELD_XAMARIN_CAUSED_BY);
            printWriter.print(str2);
        } else {
            th.printStackTrace(printWriter);
        }
        this.throwableStackTrace = stringWriter.toString();
    }

    public static CrashDetails fromFile(File file) throws IOException {
        return fromReader(file.getName().substring(0, file.getName().indexOf(".stacktrace")), new FileReader(file));
    }

    public static CrashDetails fromReader(String str, Reader reader) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(reader);
        CrashDetails crashDetails = new CrashDetails(str);
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                crashDetails.setThrowableStackTrace(sb.toString());
                return crashDetails;
            } else if (!z) {
                if (readLine.isEmpty()) {
                    z = true;
                } else {
                    int indexOf = readLine.indexOf(":");
                    if (indexOf < 0) {
                        HockeyLog.error("Malformed header line when parsing crash details: \"" + readLine + "\"");
                    }
                    String trim = readLine.substring(0, indexOf).trim();
                    String trim2 = readLine.substring(indexOf + 1, readLine.length()).trim();
                    if (trim.equals(FIELD_CRASH_REPORTER_KEY)) {
                        crashDetails.setReporterKey(trim2);
                    } else if (trim.equals(FIELD_APP_START_DATE)) {
                        try {
                            crashDetails.setAppStartDate(DATE_FORMAT.parse(trim2));
                        } catch (ParseException e) {
                            throw new RuntimeException(e);
                        }
                    } else if (trim.equals(FIELD_APP_CRASH_DATE)) {
                        try {
                            crashDetails.setAppCrashDate(DATE_FORMAT.parse(trim2));
                        } catch (ParseException e2) {
                            throw new RuntimeException(e2);
                        }
                    } else if (trim.equals(FIELD_OS_VERSION)) {
                        crashDetails.setOsVersion(trim2);
                    } else if (trim.equals(FIELD_OS_BUILD)) {
                        crashDetails.setOsBuild(trim2);
                    } else if (trim.equals(FIELD_DEVICE_MANUFACTURER)) {
                        crashDetails.setDeviceManufacturer(trim2);
                    } else if (trim.equals("Model")) {
                        crashDetails.setDeviceModel(trim2);
                    } else if (trim.equals(FIELD_APP_PACKAGE)) {
                        crashDetails.setAppPackage(trim2);
                    } else if (trim.equals(FIELD_APP_VERSION_NAME)) {
                        crashDetails.setAppVersionName(trim2);
                    } else if (trim.equals(FIELD_APP_VERSION_CODE)) {
                        crashDetails.setAppVersionCode(trim2);
                    } else if (trim.equals(FIELD_THREAD_NAME)) {
                        crashDetails.setThreadName(trim2);
                    } else if (trim.equals(FIELD_FORMAT)) {
                        crashDetails.setFormat(trim2);
                    }
                }
            } else {
                sb.append(readLine);
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
        }
    }

    public void writeCrashReport() {
        BufferedWriter bufferedWriter;
        String str = Constants.FILES_PATH + "/" + this.crashIdentifier + ".stacktrace";
        HockeyLog.debug("Writing unhandled exception to: " + str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(str));
                    try {
                        writeHeader(bufferedWriter, FIELD_APP_PACKAGE, this.appPackage);
                        writeHeader(bufferedWriter, FIELD_APP_VERSION_CODE, this.appVersionCode);
                        writeHeader(bufferedWriter, FIELD_APP_VERSION_NAME, this.appVersionName);
                        writeHeader(bufferedWriter, FIELD_OS_VERSION, this.osVersion);
                        writeHeader(bufferedWriter, FIELD_OS_BUILD, this.osBuild);
                        writeHeader(bufferedWriter, FIELD_DEVICE_MANUFACTURER, this.deviceManufacturer);
                        writeHeader(bufferedWriter, "Model", this.deviceModel);
                        writeHeader(bufferedWriter, FIELD_THREAD_NAME, this.threadName);
                        writeHeader(bufferedWriter, FIELD_CRASH_REPORTER_KEY, this.reporterKey);
                        writeHeader(bufferedWriter, FIELD_APP_START_DATE, DATE_FORMAT.format(this.appStartDate));
                        String format = DATE_FORMAT.format(this.appCrashDate);
                        writeHeader(bufferedWriter, FIELD_APP_CRASH_DATE, format);
                        String str2 = format;
                        if (this.isXamarinException.booleanValue()) {
                            String str3 = FIELD_FORMAT_VALUE;
                            writeHeader(bufferedWriter, FIELD_FORMAT, FIELD_FORMAT_VALUE);
                            str2 = str3;
                        }
                        bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
                        bufferedWriter.write(this.throwableStackTrace);
                        bufferedWriter.flush();
                        bufferedWriter.close();
                        bufferedWriter2 = str2;
                    } catch (IOException e) {
                        e = e;
                        bufferedWriter2 = bufferedWriter;
                        HockeyLog.error("Error saving crash report!", e);
                        if (bufferedWriter2 != null) {
                            bufferedWriter2.close();
                            bufferedWriter2 = bufferedWriter2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (IOException e2) {
                                HockeyLog.error("Error saving crash report!", e2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                }
            } catch (IOException e4) {
                HockeyLog.error("Error saving crash report!", e4);
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter = bufferedWriter2;
        }
    }

    private void writeHeader(Writer writer, String str, String str2) throws IOException {
        writer.write(str + ": " + str2 + IOUtils.LINE_SEPARATOR_UNIX);
    }

    public String getCrashIdentifier() {
        return this.crashIdentifier;
    }

    public String getReporterKey() {
        return this.reporterKey;
    }

    public void setReporterKey(String str) {
        this.reporterKey = str;
    }

    public Date getAppStartDate() {
        return this.appStartDate;
    }

    public void setAppStartDate(Date date) {
        this.appStartDate = date;
    }

    public Date getAppCrashDate() {
        return this.appCrashDate;
    }

    public void setAppCrashDate(Date date) {
        this.appCrashDate = date;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public String getOsBuild() {
        return this.osBuild;
    }

    public void setOsBuild(String str) {
        this.osBuild = str;
    }

    public String getDeviceManufacturer() {
        return this.deviceManufacturer;
    }

    public void setDeviceManufacturer(String str) {
        this.deviceManufacturer = str;
    }

    public String getDeviceModel() {
        return this.deviceModel;
    }

    public void setDeviceModel(String str) {
        this.deviceModel = str;
    }

    public String getAppPackage() {
        return this.appPackage;
    }

    public void setAppPackage(String str) {
        this.appPackage = str;
    }

    public String getAppVersionName() {
        return this.appVersionName;
    }

    public void setAppVersionName(String str) {
        this.appVersionName = str;
    }

    public String getAppVersionCode() {
        return this.appVersionCode;
    }

    public void setAppVersionCode(String str) {
        this.appVersionCode = str;
    }

    public String getThreadName() {
        return this.threadName;
    }

    public void setThreadName(String str) {
        this.threadName = str;
    }

    public String getThrowableStackTrace() {
        return this.throwableStackTrace;
    }

    public void setThrowableStackTrace(String str) {
        this.throwableStackTrace = str;
    }

    public Boolean getIsXamarinException() {
        return this.isXamarinException;
    }

    public void setIsXamarinException(Boolean bool) {
        this.isXamarinException = bool;
    }

    public String getFormat() {
        return this.format;
    }

    public void setFormat(String str) {
        this.format = str;
    }
}