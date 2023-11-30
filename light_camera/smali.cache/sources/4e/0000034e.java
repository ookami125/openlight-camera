package android.support.v4.app;

import android.os.Bundle;
import java.util.Set;

@Deprecated
/* loaded from: /tmp/jadx-11175800792829446388.dex */
class RemoteInputCompatBase {

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static abstract class RemoteInput {

        /* loaded from: /tmp/jadx-11175800792829446388.dex */
        public interface Factory {
            RemoteInput build(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle, Set<String> set);

            RemoteInput[] newArray(int i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract boolean getAllowFreeFormInput();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract Set<String> getAllowedDataTypes();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract CharSequence[] getChoices();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract Bundle getExtras();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract CharSequence getLabel();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract String getResultKey();
    }

    RemoteInputCompatBase() {
    }
}