package net.hockeyapp.android;

import java.util.LinkedList;
import java.util.List;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class PrivateEventManager {
    public static final int EVENT_TYPE_UNCAUGHT_EXCEPTION = 1;
    private static List<HockeyEventListener> sEventListeners = new LinkedList();

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface HockeyEventListener {
        void onHockeyEvent(Event event);
    }

    public static void addEventListener(HockeyEventListener hockeyEventListener) {
        sEventListeners.add(hockeyEventListener);
    }

    static void postEvent(Event event) {
        for (HockeyEventListener hockeyEventListener : sEventListeners) {
            hockeyEventListener.onHockeyEvent(event);
        }
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static final class Event {
        private final int mType;

        protected Event(int i) {
            this.mType = i;
        }

        public int getType() {
            return this.mType;
        }
    }
}