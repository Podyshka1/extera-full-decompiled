package androidx.media3.exoplayer.trackselection;

import android.graphics.Point;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TrackSelectionUtil {
    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, TrackSelection[] trackSelectionArr) {
        List[] listArr = new List[trackSelectionArr.length];
        for (int i = 0; i < trackSelectionArr.length; i++) {
            TrackSelection trackSelection = trackSelectionArr[i];
            listArr[i] = trackSelection != null ? ImmutableList.of(trackSelection) : ImmutableList.of();
        }
        return buildTracks(mappedTrackInfo, (List<? extends TrackSelection>[]) listArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, List<? extends TrackSelection>[] listArr) {
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo2 = mappedTrackInfo;
        List<? extends TrackSelection>[] listArr2 = listArr;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        boolean z = false;
        int i = 0;
        while (i < mappedTrackInfo2.getRendererCount()) {
            TrackGroupArray trackGroups = mappedTrackInfo2.getTrackGroups(i);
            int i2 = z ? 1 : 0;
            MappingTrackSelector.MappedTrackInfo mappedTrackInfo3 = mappedTrackInfo2;
            boolean z2 = z;
            while (i2 < trackGroups.length) {
                TrackGroup trackGroup = trackGroups.get(i2);
                boolean z3 = mappedTrackInfo3.getAdaptiveSupport(i, i2, z2) != 0 ? true : z2 ? 1 : 0;
                int i3 = trackGroup.length;
                int[] iArr = new int[i3];
                boolean[] zArr = new boolean[i3];
                int i4 = z2 ? 1 : 0;
                MappingTrackSelector.MappedTrackInfo mappedTrackInfo4 = mappedTrackInfo3;
                boolean z4 = z2;
                while (i4 < trackGroup.length) {
                    iArr[i4] = mappedTrackInfo4.getTrackSupport(i, i2, i4);
                    int length = listArr2.length;
                    int i5 = z4 ? 1 : 0;
                    boolean z5 = i5;
                    boolean z6 = z4;
                    while (i5 < length) {
                        List<? extends TrackSelection> list = listArr2[i5];
                        ?? r3 = z6;
                        while (true) {
                            if (r3 < list.size()) {
                                TrackSelection trackSelection = list.get(r3);
                                if (trackSelection.getTrackGroup().equals(trackGroup) && trackSelection.indexOf(i4) != -1) {
                                    z5 = true;
                                    break;
                                }
                                r3++;
                            }
                        }
                        i5++;
                        listArr2 = listArr;
                        z6 = false;
                        z5 = z5;
                    }
                    zArr[i4] = z5;
                    i4++;
                    mappedTrackInfo4 = mappedTrackInfo;
                    listArr2 = listArr;
                    z4 = false;
                }
                builder.add(new Tracks.Group(trackGroup, z3, iArr, zArr));
                i2++;
                mappedTrackInfo3 = mappedTrackInfo;
                listArr2 = listArr;
                z2 = false;
            }
            i++;
            mappedTrackInfo2 = mappedTrackInfo;
            listArr2 = listArr;
            z = false;
        }
        TrackGroupArray unmappedTrackGroups = mappedTrackInfo.getUnmappedTrackGroups();
        for (int i6 = 0; i6 < unmappedTrackGroups.length; i6++) {
            TrackGroup trackGroup2 = unmappedTrackGroups.get(i6);
            int[] iArr2 = new int[trackGroup2.length];
            Arrays.fill(iArr2, 0);
            builder.add(new Tracks.Group(trackGroup2, false, iArr2, new boolean[trackGroup2.length]));
        }
        return new Tracks(builder.build());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Point getMaxVideoSizeInViewport(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            if ((i3 > i4) == (i > i2)) {
                i2 = i;
                i = i2;
            }
        }
        int i5 = i3 * i;
        int i6 = i4 * i2;
        if (i5 >= i6) {
            return new Point(i2, Util.ceilDivide(i6, i3));
        }
        return new Point(Util.ceilDivide(i5, i4), i);
    }
}
