package openlight.co.camera.view.logviewer;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import openlight.co.camera.R;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class LogViewerEntry extends RelativeLayout {
    private static final DateFormat sDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    private static final String[] sLevelStrings = {"0", "1", "V", "D", "I", "W", "E", "A"};
    private TextView mLevel;
    private TextView mMessage;
    private TextView mStack;
    private TextView mTag;
    private TextView mTimestamp;

    public LogViewerEntry(Context context) {
        super(context);
    }

    public LogViewerEntry(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LogViewerEntry(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public LogViewerEntry(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void bind(int i, LogUtil.Entry entry) {
        this.mTimestamp.setText(sDateFormat.format(Long.valueOf(entry.timestamp)));
        this.mLevel.setText(sLevelStrings[entry.level]);
        this.mTag.setText(entry.tag);
        this.mMessage.setText(entry.message);
        if (entry.exception == null) {
            this.mStack.setVisibility(8);
        } else {
            this.mStack.setVisibility(0);
            this.mStack.setText(stackTrace(entry.exception));
        }
        if ((i & 1) == 0) {
            setBackgroundColor(-1);
        } else {
            setBackgroundColor(-2236963);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTimestamp = (TextView) findViewById(R.id.timestamp);
        this.mLevel = (TextView) findViewById(R.id.level);
        this.mTag = (TextView) findViewById(R.id.tag);
        this.mMessage = (TextView) findViewById(2131296500);
        this.mStack = (TextView) findViewById(R.id.stack);
    }

    private static String stackTrace(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        exc.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }
}