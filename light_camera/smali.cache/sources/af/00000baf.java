package net.hockeyapp.android.metrics;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.hockeyapp.android.metrics.model.IJsonSerializable;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class JsonHelper {
    private static final String[] CONTROL_CHARACTERS = new String[128];
    private static final int CONTROL_CHARACTER_RANGE = 128;

    static {
        for (int i = 0; i <= 31; i++) {
            CONTROL_CHARACTERS[i] = String.format("\\u%04X", Integer.valueOf(i));
        }
        CONTROL_CHARACTERS[34] = "\\\"";
        CONTROL_CHARACTERS[92] = "\\\\";
        CONTROL_CHARACTERS[8] = "\\b";
        CONTROL_CHARACTERS[12] = "\\f";
        CONTROL_CHARACTERS[10] = "\\n";
        CONTROL_CHARACTERS[13] = "\\r";
        CONTROL_CHARACTERS[9] = "\\t";
    }

    private JsonHelper() {
    }

    private static String escapeJSON(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("\"");
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < 128) {
                String str2 = CONTROL_CHARACTERS[charAt];
                if (str2 == null) {
                    sb.append(charAt);
                } else {
                    sb.append(str2);
                }
            } else if (charAt == 8232) {
                sb.append("\\u2028");
            } else if (charAt == 8233) {
                sb.append("\\u2029");
            } else {
                sb.append(charAt);
            }
        }
        sb.append("\"");
        return sb.toString();
    }

    public static String convert(Integer num) {
        return Integer.toString(num.intValue());
    }

    public static String convert(Long l) {
        return Long.toString(l.longValue());
    }

    public static String convert(char c) {
        return Character.toString(c);
    }

    public static String convert(Float f) {
        return Float.toString(f.floatValue());
    }

    public static String convert(Double d) {
        return Double.toString(d.doubleValue());
    }

    public static String convert(boolean z) {
        return Boolean.toString(z);
    }

    public static String convert(String str) {
        return str == null ? "null" : str.length() == 0 ? "\"\"" : escapeJSON(str);
    }

    public static void writeJsonSerializable(Writer writer, IJsonSerializable iJsonSerializable) throws IOException {
        if (iJsonSerializable != null) {
            iJsonSerializable.serialize(writer);
        }
    }

    public static <T> void writeDictionary(Writer writer, Map<String, T> map) throws IOException {
        if (map == null || map.isEmpty()) {
            writer.write("null");
            return;
        }
        Iterator<String> it = map.keySet().iterator();
        if (it.hasNext()) {
            writer.write("{");
            String next = it.next();
            T t = map.get(next);
            writer.write("\"" + next + "\"");
            writer.write(":");
            writeItem(writer, t);
            while (it.hasNext()) {
                String next2 = it.next();
                writer.write(",");
                writer.write("\"" + next2 + "\"");
                writer.write(":");
                writeItem(writer, map.get(next2));
            }
            writer.write("}");
        }
    }

    public static <T extends IJsonSerializable> void writeList(Writer writer, List<T> list) throws IOException {
        if (list == null || list.isEmpty()) {
            writer.write("null");
            return;
        }
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            writer.write("[");
            it.next().serialize(writer);
            while (it.hasNext()) {
                writer.write(",");
                it.next().serialize(writer);
            }
            writer.write("]");
        }
    }

    private static <T> void writeItem(Writer writer, T t) throws IOException {
        if (t != null) {
            if (t instanceof String) {
                writer.write(convert((String) t));
                return;
            } else if (t instanceof Double) {
                writer.write(convert((Double) t));
                return;
            } else if (t instanceof Integer) {
                writer.write(convert((Integer) t));
                return;
            } else if (t instanceof Long) {
                writer.write(convert((Long) t));
                return;
            } else if (t instanceof IJsonSerializable) {
                ((IJsonSerializable) t).serialize(writer);
                return;
            } else {
                throw new IOException("Cannot serialize: " + t.toString());
            }
        }
        writer.write("null");
    }
}