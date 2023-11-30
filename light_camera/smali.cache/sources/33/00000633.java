package android.support.v4.widget;

import android.app.SearchManager;
import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.widget.SearchView;

@Deprecated
/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class SearchViewCompat {

    @Deprecated
    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnCloseListener {
        boolean onClose();
    }

    @Deprecated
    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static abstract class OnCloseListenerCompat implements OnCloseListener {
        @Override // android.support.v4.widget.SearchViewCompat.OnCloseListener
        public boolean onClose() {
            return false;
        }
    }

    @Deprecated
    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    @Deprecated
    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static abstract class OnQueryTextListenerCompat implements OnQueryTextListener {
        @Override // android.support.v4.widget.SearchViewCompat.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            return false;
        }

        @Override // android.support.v4.widget.SearchViewCompat.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    private static void checkIfLegalArg(View view) {
        if (view == null) {
            throw new IllegalArgumentException("searchView must be non-null");
        }
        if (!(view instanceof SearchView)) {
            throw new IllegalArgumentException("searchView must be an instance of android.widget.SearchView");
        }
    }

    private SearchViewCompat(Context context) {
    }

    @Deprecated
    public static View newSearchView(Context context) {
        return new SearchView(context);
    }

    @Deprecated
    public static void setSearchableInfo(View view, ComponentName componentName) {
        checkIfLegalArg(view);
        ((SearchView) view).setSearchableInfo(((SearchManager) view.getContext().getSystemService("search")).getSearchableInfo(componentName));
    }

    @Deprecated
    public static void setImeOptions(View view, int i) {
        checkIfLegalArg(view);
        ((SearchView) view).setImeOptions(i);
    }

    @Deprecated
    public static void setInputType(View view, int i) {
        checkIfLegalArg(view);
        ((SearchView) view).setInputType(i);
    }

    @Deprecated
    public static void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener) {
        checkIfLegalArg(view);
        ((SearchView) view).setOnQueryTextListener(newOnQueryTextListener(onQueryTextListener));
    }

    private static SearchView.OnQueryTextListener newOnQueryTextListener(final OnQueryTextListener onQueryTextListener) {
        return new SearchView.OnQueryTextListener() { // from class: android.support.v4.widget.SearchViewCompat.1
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                return OnQueryTextListener.this.onQueryTextSubmit(str);
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                return OnQueryTextListener.this.onQueryTextChange(str);
            }
        };
    }

    @Deprecated
    public static void setOnCloseListener(View view, OnCloseListener onCloseListener) {
        checkIfLegalArg(view);
        ((SearchView) view).setOnCloseListener(newOnCloseListener(onCloseListener));
    }

    private static SearchView.OnCloseListener newOnCloseListener(final OnCloseListener onCloseListener) {
        return new SearchView.OnCloseListener() { // from class: android.support.v4.widget.SearchViewCompat.2
            @Override // android.widget.SearchView.OnCloseListener
            public boolean onClose() {
                return OnCloseListener.this.onClose();
            }
        };
    }

    @Deprecated
    public static CharSequence getQuery(View view) {
        checkIfLegalArg(view);
        return ((SearchView) view).getQuery();
    }

    @Deprecated
    public static void setQuery(View view, CharSequence charSequence, boolean z) {
        checkIfLegalArg(view);
        ((SearchView) view).setQuery(charSequence, z);
    }

    @Deprecated
    public static void setQueryHint(View view, CharSequence charSequence) {
        checkIfLegalArg(view);
        ((SearchView) view).setQueryHint(charSequence);
    }

    @Deprecated
    public static void setIconified(View view, boolean z) {
        checkIfLegalArg(view);
        ((SearchView) view).setIconified(z);
    }

    @Deprecated
    public static boolean isIconified(View view) {
        checkIfLegalArg(view);
        return ((SearchView) view).isIconified();
    }

    @Deprecated
    public static void setSubmitButtonEnabled(View view, boolean z) {
        checkIfLegalArg(view);
        ((SearchView) view).setSubmitButtonEnabled(z);
    }

    @Deprecated
    public static boolean isSubmitButtonEnabled(View view) {
        checkIfLegalArg(view);
        return ((SearchView) view).isSubmitButtonEnabled();
    }

    @Deprecated
    public static void setQueryRefinementEnabled(View view, boolean z) {
        checkIfLegalArg(view);
        ((SearchView) view).setQueryRefinementEnabled(z);
    }

    @Deprecated
    public static boolean isQueryRefinementEnabled(View view) {
        checkIfLegalArg(view);
        return ((SearchView) view).isQueryRefinementEnabled();
    }

    @Deprecated
    public static void setMaxWidth(View view, int i) {
        checkIfLegalArg(view);
        ((SearchView) view).setMaxWidth(i);
    }
}