package android.support.v4.media.session;

import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.v4.media.session.MediaControllerCompatApi21;

@RequiresApi(23)
/* loaded from: /tmp/jadx-11175800792829446388.dex */
class MediaControllerCompatApi23 {
    MediaControllerCompatApi23() {
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static class TransportControls extends MediaControllerCompatApi21.TransportControls {
        public static void playFromUri(Object obj, Uri uri, Bundle bundle) {
            ((MediaController.TransportControls) obj).playFromUri(uri, bundle);
        }
    }
}