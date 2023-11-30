package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
class Java7Support {
    private static final boolean IS_JAVA7;
    private static Method createSymlink;
    private static Method delete;
    private static Object emptyFileAttributes;
    private static Object emptyLinkOpts;
    private static Method exists;
    private static Method isSymbolicLink;
    private static Method readSymlink;
    private static Method toFile;
    private static Method toPath;

    Java7Support() {
    }

    static {
        boolean z = false;
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            Class<?> loadClass = contextClassLoader.loadClass("java.nio.file.Files");
            Class<?> loadClass2 = contextClassLoader.loadClass("java.nio.file.Path");
            Class<?> loadClass3 = contextClassLoader.loadClass("java.nio.file.attribute.FileAttribute");
            Class<?> loadClass4 = contextClassLoader.loadClass("java.nio.file.LinkOption");
            isSymbolicLink = loadClass.getMethod("isSymbolicLink", loadClass2);
            delete = loadClass.getMethod("delete", loadClass2);
            readSymlink = loadClass.getMethod("readSymbolicLink", loadClass2);
            emptyFileAttributes = Array.newInstance(loadClass3, 0);
            createSymlink = loadClass.getMethod("createSymbolicLink", loadClass2, loadClass2, emptyFileAttributes.getClass());
            emptyLinkOpts = Array.newInstance(loadClass4, 0);
            exists = loadClass.getMethod("exists", loadClass2, emptyLinkOpts.getClass());
            toPath = File.class.getMethod("toPath", new Class[0]);
            toFile = loadClass2.getMethod("toFile", new Class[0]);
            z = true;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
        }
        IS_JAVA7 = z;
    }

    public static boolean isSymLink(File file) {
        try {
            return ((Boolean) isSymbolicLink.invoke(null, toPath.invoke(file, new Object[0]))).booleanValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static File readSymbolicLink(File file) throws IOException {
        try {
            return (File) toFile.invoke(readSymlink.invoke(null, toPath.invoke(file, new Object[0])), new Object[0]);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean exists(File file) throws IOException {
        try {
            return ((Boolean) exists.invoke(null, toPath.invoke(file, new Object[0]), emptyLinkOpts)).booleanValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw ((RuntimeException) e2.getTargetException());
        }
    }

    public static File createSymbolicLink(File file, File file2) throws IOException {
        try {
            if (exists(file)) {
                return file;
            }
            return (File) toFile.invoke(createSymlink.invoke(null, toPath.invoke(file, new Object[0]), toPath.invoke(file2, new Object[0]), emptyFileAttributes), new Object[0]);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw ((IOException) e2.getTargetException());
        }
    }

    public static void delete(File file) throws IOException {
        try {
            delete.invoke(null, toPath.invoke(file, new Object[0]));
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw ((IOException) e2.getTargetException());
        }
    }

    public static boolean isAtLeastJava7() {
        return IS_JAVA7;
    }
}