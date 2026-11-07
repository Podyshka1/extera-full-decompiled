package androidx.media3.container;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public final String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        validateData(str, bArr, i2);
        this.key = str;
        this.value = bArr;
        this.localeIndicator = i;
        this.typeIndicator = i2;
    }

    public List<Integer> getAuxiliaryTrackTypesFromMap() {
        Preconditions.checkState(this.key.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte b2 = this.value[1];
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b2; i++) {
            arrayList.add(Integer.valueOf(this.value[i + 2]));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MdtaMetadataEntry.class == obj.getClass()) {
            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
            if (this.key.equals(mdtaMetadataEntry.key) && Arrays.equals(this.value, mdtaMetadataEntry.value) && this.localeIndicator == mdtaMetadataEntry.localeIndicator && this.typeIndicator == mdtaMetadataEntry.typeIndicator) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((527 + this.key.hashCode()) * 31) + Arrays.hashCode(this.value)) * 31) + this.localeIndicator) * 31) + this.typeIndicator;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        String formattedValueForAuxiliaryTracksMap;
        int i = this.typeIndicator;
        if (i != 0) {
            if (i == 1) {
                formattedValueForAuxiliaryTracksMap = Util.fromUtf8Bytes(this.value);
            } else if (i == 23) {
                formattedValueForAuxiliaryTracksMap = String.valueOf(Float.intBitsToFloat(Ints.fromByteArray(this.value)));
            } else if (i == 67) {
                formattedValueForAuxiliaryTracksMap = String.valueOf(Ints.fromByteArray(this.value));
            } else if (i == 75) {
                formattedValueForAuxiliaryTracksMap = String.valueOf(MdtaMetadataEntry$$ExternalSyntheticBackport0.m170m(this.value[0]));
            } else if (i == 78) {
                formattedValueForAuxiliaryTracksMap = String.valueOf(new ParsableByteArray(this.value).readUnsignedLongToLong());
            } else {
                formattedValueForAuxiliaryTracksMap = Util.toHexString(this.value);
            }
        } else if (this.key.equals("auxiliary.tracks.map")) {
            formattedValueForAuxiliaryTracksMap = getFormattedValueForAuxiliaryTracksMap(getAuxiliaryTrackTypesFromMap());
        }
        return "mdta: key=" + this.key + ", value=" + formattedValueForAuxiliaryTracksMap;
    }

    private static void validateData(String str, byte[] bArr, int i) {
        boolean z;
        byte b2;
        str.getClass();
        switch (str) {
            case "com.android.capture.fps":
                if (i == 23 && bArr.length == 4) {
                    z = true;
                }
                Preconditions.checkArgument(z);
                break;
            case "auxiliary.tracks.interleaved":
                if (i == 75 && bArr.length == 1 && ((b2 = bArr[0]) == 0 || b2 == 1)) {
                    z = true;
                }
                Preconditions.checkArgument(z);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                if (i == 78 && bArr.length == 8) {
                    z = true;
                }
                Preconditions.checkArgument(z);
                break;
            case "auxiliary.tracks.map":
                Preconditions.checkArgument(i == 0);
                break;
        }
    }

    private static String getFormattedValueForAuxiliaryTracksMap(List<Integer> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("track types = ");
        Joiner.on(',').appendTo(sb, list);
        return sb.toString();
    }
}
