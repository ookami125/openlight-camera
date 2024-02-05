package openlight.co.lib.view;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import openlight.co.lib.utils.LifecycleLogger;
import openlight.co.lib.utils.LogUtil;
import openlight.co.lib.utils.Utils;

public abstract class LightFragment extends Fragment implements OnOrientationChangedListener {
    private static final String TAG = Utils.safeTag(LightFragment.class);
    private static Method sMethodIsStateSaved;
    private boolean mIsStateSaved;
    private Runnable mOnOrientationChange;

    static {
        try {
            sMethodIsStateSaved = Fragment.class.getDeclaredMethod("isStateSaved");
        } catch (NoSuchMethodException var2) {
            String var0 = TAG;
            StringBuilder var1 = new StringBuilder();
            var1.append("Running on Android ");
            var1.append(VERSION.SDK_INT);
            var1.append(". No isStateSaved()");
            LogUtil.i(var0, var1.toString());
        }

    }

    public boolean checkStateSaved() {
        if (sMethodIsStateSaved != null) {
            try {
                boolean var1 = (Boolean)sMethodIsStateSaved.invoke(this);
                return var1;
            } catch (IllegalAccessException | InvocationTargetException var3) {
                LogUtil.w(TAG, "Tried to call isStateSaved() via reflection, but didn't work", var3);
            }
        }

        return this.mIsStateSaved;
    }

    protected void doOrientationChanged(int var1) {
    }

    protected void forceLandscapeMode(@NonNull Runnable var1) {
        boolean var2;
        if (this.getResources().getConfiguration().orientation == 2) {
            var2 = true;
        } else {
            var2 = false;
        }

        this.getActivity().setRequestedOrientation(0);
        if (var2) {
            var1.run();
        } else {
            this.mOnOrientationChange = var1;
        }

    }

    public void onActivityCreated(@Nullable Bundle var1) {
        super.onActivityCreated(var1);
        this.mIsStateSaved = false;
        LifecycleLogger.get().log(this, "onActivityCreated()");
    }

    public void onAttach(Context var1) {
        super.onAttach(var1);
        LifecycleLogger.get().log(this, "onAttach()");
    }

    public void onCreate(@Nullable Bundle var1) {
        super.onCreate(var1);
        LifecycleLogger.get().log(this, "onCreate()");
        this.mIsStateSaved = false;
    }

    @Nullable
    public View onCreateView(LayoutInflater var1, @Nullable ViewGroup var2, Bundle var3) {
        LifecycleLogger.get().log(this, "onCreateView()");
        return super.onCreateView(var1, var2, var3);
    }

    public void onDestroy() {
        super.onDestroy();
        LifecycleLogger.get().log(this, "onDestroy()");
    }

    public void onDestroyView() {
        super.onDestroyView();
        LifecycleLogger.get().log(this, "onDestroyView()");
        Activity var1 = this.getActivity();
        if (var1 instanceof OrientationChangeSource) {
            ((OrientationChangeSource)var1).removeOnOrientationChangedListener(this);
        }

    }

    public void onDetach() {
        super.onDetach();
        LifecycleLogger.get().log(this, "onDetach()");
    }

    public void onLowMemory() {
        super.onLowMemory();
        LifecycleLogger.get().log(this, "onLowMemory()");
    }

    public final void onOrientationChanged(int var1) {
        LifecycleLogger var3 = LifecycleLogger.get();
        StringBuilder var2 = new StringBuilder();
        var2.append("onOrientationChanged(");
        var2.append(var1);
        var2.append(")");
        var3.log(this, var2.toString());
        if (this.mOnOrientationChange != null) {
            this.mOnOrientationChange.run();
            this.mOnOrientationChange = null;
        }

        this.doOrientationChanged(var1);
    }

    public void onPause() {
        super.onPause();
        LifecycleLogger.get().log(this, "onPause()");
    }

    public void onResume() {
        super.onResume();
        this.mIsStateSaved = false;
        LifecycleLogger.get().log(this, "onResume()");
    }

    public void onSaveInstanceState(Bundle var1) {
        super.onSaveInstanceState(var1);
        this.mIsStateSaved = true;
        LifecycleLogger.get().log(this, "onSaveInstanceState()");
    }

    public void onStart() {
        super.onStart();
        this.mIsStateSaved = false;
        LifecycleLogger.get().log(this, "onStart()");
    }

    public void onStop() {
        super.onStop();
        this.mIsStateSaved = true;
        LifecycleLogger.get().log(this, "onStop()");
        Activity var2 = this.getActivity();
        if (var2 != null) {
            InputMethodManager var1 = (InputMethodManager)var2.getSystemService(InputMethodManager.class);
            if (var1 != null) {
                View var3 = var2.getCurrentFocus();
                if (var3 != null) {
                    var1.hideSoftInputFromWindow(var3.getWindowToken(), 0);
                }
            }
        }

    }

    public void onViewCreated(View var1, @Nullable Bundle var2) {
        super.onViewCreated(var1, var2);
        LifecycleLogger.get().log(this, "onViewCreated()");
        Activity var3 = this.getActivity();
        if (var3 instanceof OrientationChangeSource) {
            ((OrientationChangeSource)var3).addOnOrientationChangedListener(this);
        }

    }

    protected void popBackStack(@Nullable String var1) {
        FragmentManager var2 = this.getChildFragmentManager();
        if (var1 == null) {
            while(var2.getBackStackEntryCount() > 0) {
                var2.popBackStackImmediate();
            }
        } else {
            var2.popBackStackImmediate(var1, 1);
        }

        if (var2.getBackStackEntryCount() == 0) {
            this.getActivity().setRequestedOrientation(4);
        }

    }

    protected void removeFragment(@NonNull Fragment var1) {
        this.popBackStack(var1.getTag());
    }

    protected void showFragment(int var1, Fragment var2, String var3) {
        this.getChildFragmentManager().beginTransaction().addToBackStack(var3).replace(var1, var2, var3).commit();
    }

    public final String tag() {
        return Utils.get().tagFor(this.getClass());
    }
}
