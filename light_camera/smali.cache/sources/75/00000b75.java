package net.hockeyapp.android;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import net.hockeyapp.android.utils.Util;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ExpiryInfoActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.hockeyapp_expiry_info_title));
        setContentView(R.layout.hockeyapp_activity_expiry_info);
        ((TextView) findViewById(R.id.label_message)).setText(String.format(getString(R.string.hockeyapp_expiry_info_text), Util.getAppName(this)));
    }
}