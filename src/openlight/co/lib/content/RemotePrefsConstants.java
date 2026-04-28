package openlight.co.lib.content;

public interface RemotePrefsConstants {
    String KEY_TYPE = "type";
    String KEY_VALUE = "value";
    String METHOD_GET_PREFERENCE = "get_preference";
    String METHOD_PUT_PREFERENCE = "put_preference";
    String METHOD_REMOVE_PREFERENCE = "remove_preference";
    int PREF_TYPE_BOOL = 0;
    int PREF_TYPE_FLOAT = 3;
    int PREF_TYPE_INT = 1;
    int PREF_TYPE_LONG = 2;
    int PREF_TYPE_STRING = 4;
}
