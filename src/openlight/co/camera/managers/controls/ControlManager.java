package openlight.co.camera.managers.controls;

public abstract class ControlManager {

    public abstract void addViewToFragment();

    public abstract void closeAll();

    public abstract void initChildView();

    public abstract void removeModeSelection();

    public abstract void setVisibility(boolean visible);
}
