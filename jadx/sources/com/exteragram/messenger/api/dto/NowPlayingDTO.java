package com.exteragram.messenger.api.dto;

import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class NowPlayingDTO {
    private final String albumName;
    private final List<String> artists;
    private final String coverUrl;
    private final String deviceName;
    private final Long duration;
    private final boolean isPlaying;
    private final String platform;
    private final String previewUrl;
    private final String songUrl;
    private final String trackName;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NowPlayingDTO copy$default(NowPlayingDTO nowPlayingDTO, String str, List list, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = nowPlayingDTO.trackName;
        }
        if ((i & 2) != 0) {
            list = nowPlayingDTO.artists;
        }
        if ((i & 4) != 0) {
            str2 = nowPlayingDTO.albumName;
        }
        if ((i & 8) != 0) {
            str3 = nowPlayingDTO.coverUrl;
        }
        if ((i & 16) != 0) {
            str4 = nowPlayingDTO.previewUrl;
        }
        if ((i & 32) != 0) {
            str5 = nowPlayingDTO.songUrl;
        }
        if ((i & 64) != 0) {
            z = nowPlayingDTO.isPlaying;
        }
        if ((i & 128) != 0) {
            str6 = nowPlayingDTO.deviceName;
        }
        if ((i & 256) != 0) {
            str7 = nowPlayingDTO.platform;
        }
        if ((i & 512) != 0) {
            l = nowPlayingDTO.duration;
        }
        String str8 = str7;
        Long l2 = l;
        boolean z2 = z;
        String str9 = str6;
        String str10 = str4;
        String str11 = str5;
        return nowPlayingDTO.copy(str, list, str2, str3, str10, str11, z2, str9, str8, l2);
    }

    public final String component1() {
        return this.trackName;
    }

    public final Long component10() {
        return this.duration;
    }

    public final List<String> component2() {
        return this.artists;
    }

    public final String component3() {
        return this.albumName;
    }

    public final String component4() {
        return this.coverUrl;
    }

    public final String component5() {
        return this.previewUrl;
    }

    public final String component6() {
        return this.songUrl;
    }

    public final boolean component7() {
        return this.isPlaying;
    }

    public final String component8() {
        return this.deviceName;
    }

    public final String component9() {
        return this.platform;
    }

    public final NowPlayingDTO copy(String trackName, List<String> list, String str, String str2, String str3, String str4, boolean z, String str5, String str6, Long l) {
        Intrinsics.checkNotNullParameter(trackName, "trackName");
        return new NowPlayingDTO(trackName, list, str, str2, str3, str4, z, str5, str6, l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NowPlayingDTO)) {
            return false;
        }
        NowPlayingDTO nowPlayingDTO = (NowPlayingDTO) obj;
        return Intrinsics.areEqual(this.trackName, nowPlayingDTO.trackName) && Intrinsics.areEqual(this.artists, nowPlayingDTO.artists) && Intrinsics.areEqual(this.albumName, nowPlayingDTO.albumName) && Intrinsics.areEqual(this.coverUrl, nowPlayingDTO.coverUrl) && Intrinsics.areEqual(this.previewUrl, nowPlayingDTO.previewUrl) && Intrinsics.areEqual(this.songUrl, nowPlayingDTO.songUrl) && this.isPlaying == nowPlayingDTO.isPlaying && Intrinsics.areEqual(this.deviceName, nowPlayingDTO.deviceName) && Intrinsics.areEqual(this.platform, nowPlayingDTO.platform) && Intrinsics.areEqual(this.duration, nowPlayingDTO.duration);
    }

    public int hashCode() {
        int iHashCode = this.trackName.hashCode() * 31;
        List<String> list = this.artists;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.albumName;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.coverUrl;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.previewUrl;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.songUrl;
        int iHashCode6 = (((iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isPlaying)) * 31;
        String str5 = this.deviceName;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.platform;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Long l = this.duration;
        return iHashCode8 + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "NowPlayingDTO(trackName=" + this.trackName + ", artists=" + this.artists + ", albumName=" + this.albumName + ", coverUrl=" + this.coverUrl + ", previewUrl=" + this.previewUrl + ", songUrl=" + this.songUrl + ", isPlaying=" + this.isPlaying + ", deviceName=" + this.deviceName + ", platform=" + this.platform + ", duration=" + this.duration + ')';
    }

    public NowPlayingDTO(String trackName, List<String> list, String str, String str2, String str3, String str4, boolean z, String str5, String str6, Long l) {
        Intrinsics.checkNotNullParameter(trackName, "trackName");
        this.trackName = trackName;
        this.artists = list;
        this.albumName = str;
        this.coverUrl = str2;
        this.previewUrl = str3;
        this.songUrl = str4;
        this.isPlaying = z;
        this.deviceName = str5;
        this.platform = str6;
        this.duration = l;
    }

    public final String getTrackName() {
        return this.trackName;
    }

    public final List<String> getArtists() {
        return this.artists;
    }

    public final String getAlbumName() {
        return this.albumName;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final String getSongUrl() {
        return this.songUrl;
    }

    public final boolean isPlaying() {
        return this.isPlaying;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final String getPlatform() {
        return this.platform;
    }

    public final Long getDuration() {
        return this.duration;
    }
}
