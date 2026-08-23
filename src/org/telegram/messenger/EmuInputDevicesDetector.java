package org.telegram.messenger;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class EmuInputDevicesDetector {
    private static final String INPUT_DEVICES_FILE = "/proc/bus/input/devices";
    private static final String NAME_PREFIX = "N: Name=\"";
    private static final String[] RESTRICTED_DEVICES = {"bluestacks", "memuhyperv", "virtualbox"};

    private EmuInputDevicesDetector() {
    }

    public static boolean detect() {
        List<String> inputDevicesNames = getInputDevicesNames();
        if (inputDevicesNames != null) {
            for (String str : inputDevicesNames) {
                for (String str2 : RESTRICTED_DEVICES) {
                    if (str.toLowerCase().contains(str2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static List<String> getInputDevicesNames() {
        File file = new File(INPUT_DEVICES_FILE);
        if (!file.canRead()) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    if (line.startsWith(NAME_PREFIX)) {
                        String strSubstring = line.substring(9, line.length() - 1);
                        if (!TextUtils.isEmpty(strSubstring)) {
                            arrayList.add(strSubstring);
                        }
                    }
                } else {
                    bufferedReader.close();
                    return arrayList;
                }
            }
        } catch (IOException e) {
            FileLog.m1136e(e);
            return null;
        }
    }
}
