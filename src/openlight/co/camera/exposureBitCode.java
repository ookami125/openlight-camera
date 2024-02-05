package openlight.co.camera;

/* loaded from: /tmp/jadx-16353046494839492066.dex */
public class exposureBitCode {
    private static int bitCode32Length = 1744;
    private static int bitCode64Length = 1700;

    public static byte[] getBitCode32() {
        return getBitCode32Internal();
    }

    private static byte[] getSegment32_0() {
        return new byte[]{-34, -64, 23, 11, 0, 0, 0, 0, 44, 0, 0, 0, -92, 6, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 1, 64, 4, 0, 106, 9, 0, 0, 2, 64, 4, 0, 3, 0, 0, 0, 66, 67, -64, -34, 33, 12, 0, 0, -90, 1, 0, 0, 1, 16, 0, 0, 18, 0, 0, 0, 7, -127, 35, -111, 65, -56, 4, 73, 6, 16, 50, 57, -110, 1, -124, 12, 37, 5, 8, 25, 30, 4, -117, 98, Byte.MIN_VALUE, 20, 69, 2, 66, -110, 11, 66, -92, 16, 50, 20, 56, 8, 24, 73, 10, 50, 68, 36, 72, 10, -112, 33, 35, -60, 82, Byte.MIN_VALUE, 12, 25, 33, 114, 36, 7, -56, 72, 17, 98, -88, -96, -88, 64, -58, -16, 1, 0, 0, 0, 73, 24, 0, 0, 16, 0, 0, 0, 11, -124, -1, -1, -1, -1, 31, -64, 96, -127, 17, Byte.MIN_VALUE, 32, 8, -126, 32, 33, Byte.MIN_VALUE, 32, 8, -126, 32, -15, -1, -1, -1, -1, 3, 24, 44, 16, -2, -1, -1, -1, Byte.MAX_VALUE, 0, -93, 5, 68, 0, -126, 32, 8, -126, -60, -1, -1, -1, -1, 15, 96, 40, 44, 16, -2, -1, -1, -1, Byte.MAX_VALUE, 0, 35, 0, 0, -119, 32, 0, 0, 18, 0, 0, 0, 50, 34, 72, 9, 32, 100, -123, 4, -109, 34, -92, -124, 4, -109, 34, -29, -124, -95, -112, 20, 18, 76, -118, -116, 11, -124, -92, 76, 16, 76, 51, 0, 4, 70, 0, -118, 32, 0, -115, 57, 2, 100, 24, -127, 40, -56, -108, 65, -100, 67, 104, -114, 0, 12, 10, -95, -108, 82, -76, 76, 0, -88, 21, 65, 56, 122, 3, 1, 115, 4, -96, 0, 19, -80, 112, -112, -121, 118, -80, -121, 59, 104, 3, 119, 120, 7, 119, 40, -121, 54, 96, -121, 116, 112, -121, 122, -64, -121, 54, 56, 7, 119, -88, -121, 114, 8, 7, 113, 72, -121, 13, 100, 80, 14, 109, 0, 15, 122, 48, 7, 114, -96, 7, 115, 32, 7, 109, -112, 14, 118, 64, 7, 122, 96, 7, 116, -48, 6, -10, 16, 7, 114, Byte.MIN_VALUE, 7, 122, 96, 7, 116, -96, 7, 113, 32, 7, 120, -48, 6, -18, 48, 7, 114, -48, 6, -77, 96, 7, 116, -96, -13, 64, -126, 4, 50, 66, 68, 4, -40, -95, 4, 64, 50, 12, 0, 0, 4, -64, 16, -123, 0, 0, 32, 0, 0, 0, 8, -122, 40, 9, 0, 0, 2, 0, 0, 64, 48, 68, 97, Byte.MIN_VALUE, 0, 24, 0, 0, 0, -126, 33, 10, 4, 0, 0, 1, 0, 0, 16, 100, -127, 0, 0, 0, 0, 7, 0, 0, 0, 50, 30, -104, 16, 25, 17, 76, -112, -116, 9, 38, 71, -58, 4, 67, -110, 35, 0, -92, 74, -96, 16, 8, -116, 0, 0, 0, 0, 121, 24, 0, 0, 103, 0, 0, 0, 26, 3, 76, -112, 70, 2, 19, 52, 68, 80, 12, 42, 119, 99, 104, 97, 114, 95, 115, 105, 122, 101, 67, 4, -27, 24, 98, 40, 70, 20, 40, 7, -101, -74, 52, -73, -81, 50, -73, -70, -74, -81, -71, 52, -67, -78, 33, -122, 98, 68, -124, 114, -112, 15, -126, -36, -56, -28, -34, -46, -56, 64, -58, -40, -62, -36, -50, 64, -20, -54, -28, -26, -46, -34, -36, 64, 102, 92, 112, 92, 100, 110, 106, 104, 112, 96, 64, 64, 80, -60, -62, -26, -54, -56, 64, -34, -36, 64, -104, -104, -84, -102, 64, 102, 92, 112, 92, 100, 110, 106, 104, 112, 96, 82, -122, 8, -111, -63, -61, -82, 76, 110, 46, -19, -51, -115, 65, -52, 16, 34, 66, -94, -124, -111, 90, -104, 93, -40, 23, 92, -40, -40, 90, -40, 89, -39, -105, 91, 88, 91, 25, 31, -74, -76, 51, 52, 58, -105, -79, 55, -105, -79, -80, -74, 50, -71, -80, 33, 68, -76, 68, 12, 39, 23, -76, 50, 54, -72, 50, -71, -81, -71, 50, -70, 34, 60, -72, -73, -71, 58, -71, -78, 33, 66, -28, -112, -112, 123, 123, -93, 27, 34, 68, 16, -111, 50, 60, -72, -73, -71, 58, -71, -78, 33, 66, 36, 49, Byte.MIN_VALUE, 25, 34, 68, 20, -125, -103, 33, 66, 100, -79, 48, 99, 123, 11, -93, -29, -13, -42, -26, -106, 6, -9, 70, 87, -26, 70, 7, 50, -122, 22, 38, -57, 104, 42, -83, 13, -114, -83, 12, 100, -24, 101, 104, 101, 5, -124, 74, 40, 40, 104, -120, 16, 105, 67, 4, -87, 24, 98, 68, 89, -76, 73, -59, 16, 35, -62, -94, 78, 42, -122, 24, -111, 23, 121, 82, -47, -120, -115, -51, -82, -51, -91, -19, -115, -84, -114, -83, -52, -59, -116, 45, -20, 108, 110, -118, 48, 20, 85, -40, -40, -20, -38, 92, -46, -56, -54, -36, -24, -90, 4, 71, -113, 17, 56, -71, -80, -77, -74, -80, 41, -126, -46, -12, 25, -111, -101, -5, 42, -61, -125, 123, -109, -93, -5, 50, -85, 115, 27, -101, 18, 60, -67, 70, -28, -26, -66, -54, -16, -32, -34, -28, -24, -66, -52, -34, -28, -54, -62, -58, -48, -66, -36, -62, -38, -54, -90, 8, -47, 84, 105, 68, 110, -18, -85, 12, 15, -18, 77, -114, -18, -53, -20, 77, -82, 44, 108, 12, 109, -118, 80, 93, 0, 0, 0, 121, 24, 0, 0, 92, 0, 0, 0, 51, 8, Byte.MIN_VALUE, 28, -60, -31, 28, 102, 20, 1, 61, -120, 67, 56, -124, -61, -116, 66, Byte.MIN_VALUE, 7, 121, 120, 7, 115, -104, 113, 12, -26, 0, 15, -19, 16, 14, -12, Byte.MIN_VALUE, 14, 51, 12, 66, 30, -62, -63, 29, -50, -95, 28, 102, 48, 5, 61, -120, 67, 56, -124, -125, 27, -52, 3, 61, -56, 67, 61, -116, 3, 61, -52, 120, -116, 116, 112, 7, 123, 8, 7, 121, 72, -121, 112, 112, 7, 122, 112, 3, 118, 120, -121, 112, 32, -121, 25, -52, 17, 14, -20, -112, 14, 
        -31, 48, 15, 110, 48, 15, -29, -16, 14, -16, 80, 14, 51, 16, -60, 29, -34, 33, 28, -40, 33, 29, -62, 97, 30, 102, 48, -119, 59, -68, -125, 59, -48, 67, 57, -76, 3, 60, -68, -125, 60, -124, 3, 59, -52, -16, 20, 118, 96, 7, 123, 104, 7, 55, 104, -121, 114, 104, 7, 55, Byte.MIN_VALUE, -121, 112, -112, -121, 112, 96, 7, 118, 40, 7, 118, -8, 5, 118, 120, -121, 119, Byte.MIN_VALUE, -121, 95, 8, -121, 113, 24, -121, 114, -104, -121, 121, -104, -127, 44, -18, -16, 14, -18, -32, 14, -11, -64, 14, -20, 48, 3, 98, -56, -95, 28, -28, -95, 28, -52, -95, 28, -28, -95, 28, -36, 97, 28, -54, 33, 28, -60, -127, 29, -54, 97, 6, -42, -112, 67, 57, -56, 67, 57, -104, 67, 57, -56, 67, 57, -72, -61, 56, -108, 67, 56, -120, 3, 59, -108, -61, 47, -68, -125, 60, -4, -126, 59, -44, 3, 59, -80, -61, 12, -57, 105, -121, 112, 88, -121, 114, 112, -125, 116, 104, 7, 120, 96, -121, 116, 24, -121, 116, -96, -121, 25, -50, 83, 15, -18, 0, 15, -14, 80, 14, -28, -112, 14, -29, 64, 15, -31, 32, 14, -20, 80, 14, 51, 32, 40, 29, -36, -63, 30, -62, 65, 30, -46, 33, 28, -36, -127, 30, -36, -32, 28, -28, -31, 29, -22, 1, 30, 102, 24, 81, 56, -80, 67, 58, -100, -125, 59, -52, 80, 36, 118, 96, 7, 123, 104, 7, 55, 96, -121, 119, 120, 7, 120, -104, 81, 76, -12, -112, 15, -16, 80, 14, 0, 0, 113, 32, 0, 0, 14, 0, 0, 0, 6, 96, 4, 17, 98, 28, -109, 17, 76, -2, 65, 44, 15, 17, -3, 18, 49, 121, -41, -29, 72, 84, 68, 88, -64, 34, 17, -109, 119, 61, -114, 68, 69, -124, 9, 32, -60, -11, 56, 18, 21, 17, 54, -48, -4, -13, 30, 73, -36, 2, 48, 15, -126, 32, 0, 0, 97, 32, 0, 0, 20, 0, 0, 0, 19, 4, 65, 44, 16, 0, 0, 0, 3, 0, 0, 0, 4, -58, 8, 64, 16, -12, -17, 48, 0, 0, 0, 0, -91, 36, 81, -54, 66, -125, 17, 0, 51, 0, 24, 14, 4, 0, 0, 0, 4, 0, 0, 0, -58, 48, 12, 72, 101, 9, 65, 101, 11, -125, 68, 5, 0, 0, 0, 0, 1, 49, 0, 0, 2, 0, 0, 0, 91, 6, 33, -8, 0, 0, 0, 0, 0, 0, 0, 0, 97, 32, 0, 0, 63, 0, 0, 0, 19, 4, 65, 44, 16, 0, 0, 0, 2, 0, 0, 0, -92, 70, 0, -54, Byte.MAX_VALUE, -96, 8, 0, 4, 12, 74, -58, 24, -62, -77, 28, 4, -86, -100, 72, 78, 82, 52, 98, 96, 20, -63, 48, 45, -52, 81, 5, 72, 25, 115, 12, 86, -75, 12, 70, 40, -41, 0, 80, 50, -58, 16, 48, -29, 50, 80, -27, 104, 114, -101, -94, 17, 3, -93, 8, 6, 110, 97, -82, 43, 48, -57, 112, 121, -58, 96, -124, -14, 13, 0, 37, 99, 12, 1, 12, -102, 11, 3, 80, -27, -120, -127, -36, 24, 40, 26, 49, 48, -118, 96, 32, -125, -123, -71, 50, 40, 48, -57, -16, -103, 65, 51, 24, -95, -100, -63, 0, 96, 56, 16, 0, 25, 0, 0, 0, 86, 98, 8, -64, -78, -44, -72, 69, 20, -126, -45, 84, -75, 77, 20, -126, -45, 84, -74, 85, 20, -126, -45, 84, -73, 105, 20, -126, -45, 84, -71, 113, 20, -126, -45, 84, -69, 121, 20, -126, -45, 84, -67, -119, 24, -126, -45, 84, 117, 109, 36, -122, -32, 52, 85, 125, -101, -119, 33, 56, 77, 85, -25, -74, 65, 48, -44, -94, -101, -60, -64, 80, -117, -115, 20, 12, -75, -44, -74, 117, 20, 2, -80, 44, -68, 37, 8, 72, 99, 10, -125, 67, 77, 70, 65, 8, -64, -78, 0, 0, 1, 49, 0, 0, 2, 0, 0, 0, 91, 6, 32, -8, 0, 0, 0, 0, 0, 0, 0, 0, 97, 32, 0, 0, 12, 0, 0, 0, 19, 4, 65, 44, 16, 0, 0, 0, 1, 0, 0, 0, -92, 70, 0, 0, -29, 13, -119, -94, -48, 50, 70, 12, 8, 32, 8, 24, 12, 7, 2, 0, 2, 0, 0, 0, 7, 80, 16, -51, 20, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    }

    private static byte[] getBitCode32Internal() {
        byte[] bArr = new byte[bitCode32Length];
        byte[] segment32_0 = getSegment32_0();
        System.arraycopy(segment32_0, 0, bArr, 0, segment32_0.length);
        int length = segment32_0.length;
        return bArr;
    }

    public static byte[] getBitCode64() {
        return getBitCode64Internal();
    }

    private static byte[] getSegment64_0() {
        return new byte[]{-34, -64, 23, 11, 0, 0, 0, 0, 44, 0, 0, 0, 120, 6, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 1, 64, 4, 0, 106, 9, 0, 0, 2, 64, 4, 0, 3, 0, 0, 0, 66, 67, -64, -34, 33, 12, 0, 0, -101, 1, 0, 0, 1, 16, 0, 0, 18, 0, 0, 0, 7, -127, 35, -111, 65, -56, 4, 73, 6, 16, 50, 57, -110, 1, -124, 12, 37, 5, 8, 25, 30, 4, -117, 98, Byte.MIN_VALUE, 20, 69, 2, 66, -110, 11, 66, -92, 16, 50, 20, 56, 8, 24, 73, 10, 50, 68, 36, 72, 10, -112, 33, 35, -60, 82, Byte.MIN_VALUE, 12, 25, 33, 114, 36, 7, -56, 72, 17, 98, -88, -96, -88, 64, -58, -16, 1, 0, 0, 0, 73, 24, 0, 0, 16, 0, 0, 0, 11, -124, -1, -1, -1, -1, 31, -64, 96, -127, 17, Byte.MIN_VALUE, 32, 8, -126, 32, 33, Byte.MIN_VALUE, 32, 8, -126, 32, -15, -1, -1, -1, -1, 3, 24, 44, 16, -2, -1, -1, -1, Byte.MAX_VALUE, 0, -93, 5, 68, 0, -126, 32, 8, -126, -60, -1, -1, -1, -1, 15, 96, 40, 44, 16, -2, -1, -1, -1, Byte.MAX_VALUE, 0, 35, 0, 0, -119, 32, 0, 0, 18, 0, 0, 0, 50, 34, 72, 9, 32, 100, -123, 4, -109, 34, -92, -124, 4, -109, 34, -29, -124, -95, -112, 20, 18, 76, -118, -116, 11, -124, -92, 76, 16, 76, 51, 0, 4, 70, 0, -118, 32, 0, -115, 57, 2, 100, 24, -127, 40, -56, -108, 65, -100, 67, 104, -114, 0, 12, 10, -95, -108, 82, -76, 76, 0, -88, 21, 65, 56, 122, 3, 1, 115, 4, -96, 0, 19, -76, 112, 8, 7, 121, 24, 7, 116, -80, 3, 58, 104, 3, 119, 120, 7, 119, 40, -121, 54, 96, -121, 116, 112, -121, 122, -64, -121, 54, 56, 7, 119, -88, -121, 114, 8, 7, 113, 72, -121, 13, 115, 80, 14, 109, -48, 14, 122, 80, 14, 109, -112, 14, 120, -96, 7, 120, -96, 7, 115, 32, 7, 109, -112, 14, 113, 96, 7, 122, 16, 7, 118, -96, 7, 115, 32, 7, 109, -112, 14, 118, 64, 7, 122, 96, 7, 116, -48, 6, -23, 16, 7, 114, Byte.MIN_VALUE, 7, 122, 16, 7, 114, Byte.MIN_VALUE, 7, 109, -32, 14, 115, 32, 7, 122, 96, 7, 116, -48, 6, -77, 16, 7, 114, Byte.MIN_VALUE, 7, 58, 15, 36, 72, 32, 35, 68, 68, Byte.MIN_VALUE, 29, 74, 0, 28, -61, 0, 0, 64, 0, 12, 81, 8, 0, 0, 2, 0, 0, Byte.MIN_VALUE, 96, -120, -110, 0, 0, 32, 0, 0, 0, 4, 67, 20, 6, 8, Byte.MIN_VALUE, 1, 0, 0, 32, 24, -94, 64, 0, 0, 16, 0, 0, 0, 65, 22, 8, 0, 0, 6, 0, 0, 0, 50, 30, -104, 12, 25, 17, 76, -112, -116, 9, 38, 71, -58, 4, 67, -110, 35, 0, 4, 70, 0, 0, 0, 0, 121, 24, 0, 0, 86, 0, 0, 0, 26, 3, 76, -112, 70, 2, 19, 68, 62, 8, 114, 35, -109, 123, 75, 35, 3, 25, 99, 11, 115, 59, 3, -79, 43, -109, -101, 75, 123, 115, 3, -103, 113, -63, 113, -111, -71, -87, -95, -63, -127, 1, 1, 65, 17, 11, -101, 43, 35, 3, 121, 115, 3, 97, 98, -78, 106, 2, -103, 113, -63, 113, -111, -71, -87, -95, -63, -127, 73, 25, 34, 68, 0, 15, -69, 50, -71, -71, -76, 55, 55, 6, 49, 67, -120, 72, -120, 6, 70, 106, 97, 118, 97, 95, 112, 97, 99, 107, 97, 103, 101, 95, 110, 97, 109, 101, 124, -40, -46, -50, -48, -24, 92, -58, -34, 92, -58, -62, -38, -54, -28, -62, -122, 16, 81, 17, 25, -100, 92, -48, -54, -40, -32, -54, -28, -66, -26, -54, -24, -118, -16, -32, -34, -26, -22, -28, -54, -122, 8, 17, 66, 66, -18, -19, -115, 110, -120, 16, 41, 68, -54, -16, -32, -34, -26, -22, -28, -54, -122, 8, 17, -61, 0, 102, -120, 16, 57, 12, 102, -122, 8, 17, -60, -62, -116, -19, 45, -116, -114, -49, 91, -101, 91, 26, -36, 27, 93, -103, 27, 29, -56, 24, 90, -104, 28, -93, -87, -76, 54, 56, -74, 50, -112, -95, -105, -95, -107, 21, 16, 42, -95, -96, -96, 33, 66, 68, 13, 17, -92, 98, -120, 17, 77, 81, 37, 21, 67, -116, 72, -118, 46, -87, 24, 98, 68, 88, -124, 73, 69, 21, 54, 54, -69, 54, -105, 52, -78, 50, 55, -70, 41, 65, -48, 99, 4, 78, 46, -20, -84, 45, 108, -118, 64, 28, 125, 70, -28, -26, -66, -54, -16, -32, -34, -28, -24, -66, -52, -22, -36, -58, -90, 4, 73, -81, 17, -71, -71, -81, 50, 60, -72, 55, 57, -70, 47, -77, 55, -71, -78, -80, 49, -76, 47, -73, -80, -74, -78, 41, -62, -46, 84, 26, -111, -101, -5, 42, -61, -125, 123, -109, -93, -5, 50, 123, -109, 43, 11, 27, 67, -101, 34, 60, 17, 0, 121, 24, 0, 0, 92, 0, 0, 0, 51, 8, Byte.MIN_VALUE, 28, -60, -31, 28, 102, 20, 1, 61, -120, 67, 56, -124, -61, -116, 66, Byte.MIN_VALUE, 7, 121, 120, 7, 115, -104, 113, 12, -26, 0, 15, -19, 16, 14, -12, Byte.MIN_VALUE, 14, 51, 12, 66, 30, -62, -63, 29, -50, -95, 28, 102, 48, 5, 61, -120, 67, 56, -124, -125, 27, -52, 3, 61, -56, 67, 61, -116, 3, 61, -52, 120, -116, 116, 112, 7, 123, 8, 7, 121, 72, -121, 112, 112, 7, 122, 112, 3, 118, 120, -121, 112, 32, -121, 25, -52, 17, 14, -20, -112, 14, -31, 48, 15, 110, 48, 15, -29, -16, 14, -16, 80, 14, 51, 16, -60, 29, -34, 33, 28, -40, 33, 29, -62, 97, 30, 102, 48, -119, 59, -68, -125, 59, -48, 67, 57, -76, 3, 60, -68, -125, 60, -124, 3, 59, -52, -16, 20, 118, 
        96, 7, 123, 104, 7, 55, 104, -121, 114, 104, 7, 55, Byte.MIN_VALUE, -121, 112, -112, -121, 112, 96, 7, 118, 40, 7, 118, -8, 5, 118, 120, -121, 119, Byte.MIN_VALUE, -121, 95, 8, -121, 113, 24, -121, 114, -104, -121, 121, -104, -127, 44, -18, -16, 14, -18, -32, 14, -11, -64, 14, -20, 48, 3, 98, -56, -95, 28, -28, -95, 28, -52, -95, 28, -28, -95, 28, -36, 97, 28, -54, 33, 28, -60, -127, 29, -54, 97, 6, -42, -112, 67, 57, -56, 67, 57, -104, 67, 57, -56, 67, 57, -72, -61, 56, -108, 67, 56, -120, 3, 59, -108, -61, 47, -68, -125, 60, -4, -126, 59, -44, 3, 59, -80, -61, 12, -57, 105, -121, 112, 88, -121, 114, 112, -125, 116, 104, 7, 120, 96, -121, 116, 24, -121, 116, -96, -121, 25, -50, 83, 15, -18, 0, 15, -14, 80, 14, -28, -112, 14, -29, 64, 15, -31, 32, 14, -20, 80, 14, 51, 32, 40, 29, -36, -63, 30, -62, 65, 30, -46, 33, 28, -36, -127, 30, -36, -32, 28, -28, -31, 29, -22, 1, 30, 102, 24, 81, 56, -80, 67, 58, -100, -125, 59, -52, 80, 36, 118, 96, 7, 123, 104, 7, 55, 96, -121, 119, 120, 7, 120, -104, 81, 76, -12, -112, 15, -16, 80, 14, 0, 0, 113, 32, 0, 0, 14, 0, 0, 0, 6, 96, 4, 17, 98, 28, -109, 17, 76, -2, 65, 44, 15, 17, -3, 18, 49, 121, -41, -29, 72, 84, 68, 88, -64, 34, 17, -109, 119, 61, -114, 68, 69, -124, 9, 32, -60, -11, 56, 18, 21, 17, 54, -48, -4, -13, 30, 73, -36, 2, 48, 15, -126, 32, 0, 0, 97, 32, 0, 0, 20, 0, 0, 0, 19, 4, 65, 44, 16, 0, 0, 0, 3, 0, 0, 0, 4, -58, 8, 64, 16, -12, -17, 48, 0, 0, 0, 0, -123, 28, 81, 72, 66, -125, 17, Byte.MIN_VALUE, 50, 0, 24, 14, 4, 0, 0, 0, 4, 0, 0, 0, -90, 48, 12, 72, 101, 7, 65, 101, 9, -125, 68, 5, 0, 0, 0, 0, 1, 49, 0, 0, 2, 0, 0, 0, 91, 6, 33, -56, 0, 0, 0, 0, 0, 0, 0, 0, 97, 32, 0, 0, 64, 0, 0, 0, 19, 4, 65, 44, 16, 0, 0, 0, 3, 0, 0, 0, -92, 70, 0, -54, Byte.MAX_VALUE, Byte.MIN_VALUE, 100, 9, 20, 1, 0, 0, 4, 12, 58, -58, 24, -126, 83, -36, 3, -86, 26, 72, 46, 82, 52, 98, 96, 20, -63, 32, 37, -54, 77, 5, 8, 25, 115, 12, 21, 85, 12, 70, 32, -42, 0, -48, 49, -58, 16, -82, -27, 48, 80, -43, 100, 114, -102, -94, 17, 3, -93, 8, -122, 45, 81, -114, 43, 48, -57, 96, 117, -53, 96, 4, -30, 13, 0, 29, 99, 12, -31, 99, 14, 12, 64, 85, 19, 6, 114, 98, -96, 104, -60, -64, 40, -126, 97, 12, 18, -27, -56, -96, -64, 28, -125, 87, 6, -52, 96, 4, 98, 6, 3, Byte.MIN_VALUE, -31, 64, 0, 0, 25, 0, 0, 0, 70, 98, 8, -64, -78, -44, -72, 65, 20, -126, -45, 84, -75, 73, 20, -126, -45, 84, -74, 81, 20, -126, -45, 84, -73, 101, 20, -126, -45, 84, -71, 109, 20, -126, -45, 84, -69, 117, 20, -126, -45, 84, -67, -123, 24, -126, -45, 84, 117, 109, 35, -122, -32, 52, 85, 125, 91, -119, 33, 56, 77, 85, -25, -90, 65, 48, -44, -94, 91, -60, -64, 80, -117, -119, 20, 12, -75, -44, -74, 113, 20, 2, -80, 44, -68, 29, 8, 72, 99, 8, -125, 67, 77, 54, 65, 8, -64, -78, 0, 0, 1, 49, 0, 0, 2, 0, 0, 0, 91, 6, 32, -56, 0, 0, 0, 0, 0, 0, 0, 0, 97, 32, 0, 0, 12, 0, 0, 0, 19, 4, 65, 44, 16, 0, 0, 0, 1, 0, 0, 0, -92, 70, 0, 0, -29, 13, 71, -127, 80, 50, 70, 12, 8, 32, 8, 20, 12, 7, 2, 0, 2, 0, 0, 0, 7, 80, 16, -51, 20, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    }

    private static byte[] getBitCode64Internal() {
        byte[] bArr = new byte[bitCode64Length];
        byte[] segment64_0 = getSegment64_0();
        System.arraycopy(segment64_0, 0, bArr, 0, segment64_0.length);
        int length = segment64_0.length;
        return bArr;
    }
}