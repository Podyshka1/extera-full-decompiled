package com.chaquo.python.internal;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import p022j$.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Common {
    public static final String ABI_COMMON = "common";
    public static final String ASSET_APP = "app";
    public static final String ASSET_BOOTSTRAP = "bootstrap";
    public static final String ASSET_BOOTSTRAP_NATIVE = "bootstrap-native";
    public static final String ASSET_BUILD_JSON = "build.json";
    public static final String ASSET_CACERT = "cacert.pem";
    public static final String ASSET_DIR = "chaquopy";
    public static final String ASSET_REQUIREMENTS = "requirements";
    public static final String ASSET_STDLIB = "stdlib";
    public static final int COMPILE_SDK_VERSION = 34;
    public static final String DEFAULT_PYTHON_VERSION = "3.11";
    public static final String MIN_AGP_VERSION = "7.0.0";
    public static final int MIN_SDK_VERSION = 21;
    public static final String PYTHON_IMPLEMENTATION = "cp";
    public static final Map<String, String> PYTHON_VERSIONS;
    public static List<String> PYTHON_VERSIONS_SHORT;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PYTHON_VERSIONS = linkedHashMap;
        linkedHashMap.put("3.11.10", "1");
        PYTHON_VERSIONS_SHORT = new ArrayList();
        for (String str : linkedHashMap.keySet()) {
            PYTHON_VERSIONS_SHORT.add(str.substring(0, str.lastIndexOf(46)));
        }
    }

    public static List<String> supportedAbis(String str) {
        if (!PYTHON_VERSIONS_SHORT.contains(str)) {
            throw new IllegalArgumentException("Unknown Python version: '" + str + "'");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("arm64-v8a");
        arrayList.add("x86_64");
        if (Arrays.asList("3.8", "3.9", "3.10", DEFAULT_PYTHON_VERSION).contains(str)) {
            arrayList.add("armeabi-v7a");
            arrayList.add("x86");
        }
        List.EL.sort(arrayList, null);
        return arrayList;
    }

    public static String assetZip(String str) {
        return assetZip(str, null);
    }

    public static String assetZip(String str, String str2) {
        if (str2 == null) {
            return str + ".imy";
        }
        return str + "-" + str2 + ".imy";
    }

    public static String osName() {
        String property = System.getProperty("os.name");
        String[] strArr = {"linux", "mac", "windows"};
        for (int i = 0; i < 3; i++) {
            String str = strArr[i];
            if (property.toLowerCase(Locale.ENGLISH).startsWith(str)) {
                return str;
            }
        }
        throw new RuntimeException("unknown os.name: " + property);
    }

    public static String findExecutable(String str) throws FileNotFoundException {
        File file = new File(str);
        if (file.isAbsolute()) {
            if (file.exists()) {
                return str;
            }
            throw new FileNotFoundException("'" + str + "' does not exist");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("/Users/alexeyzavar/.pyenv/shims");
        String lowerCase = System.getProperty("os.name").toLowerCase();
        if (lowerCase.startsWith("mac")) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader("/etc/paths"));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        arrayList.add(line);
                    } finally {
                    }
                }
                bufferedReader.close();
            } catch (IOException e) {
                System.out.println("Warning: while reading /etc/paths: " + e);
            }
        }
        Collections.addAll(arrayList, System.getenv("PATH").split(File.pathSeparator));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(_UrlKt.FRAGMENT_ENCODE_SET);
        if (lowerCase.startsWith("win")) {
            arrayList2.add(".exe");
            arrayList2.add(".bat");
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str2 = (String) obj;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList2.get(i2);
                i2++;
                File file2 = new File(str2, str + ((String) obj2));
                if (file2.exists()) {
                    return file2.toString();
                }
            }
        }
        throw new FileNotFoundException("Couldn't find '" + str + "' on PATH");
    }
}
