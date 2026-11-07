package com.exteragram.messenger.player;

import android.text.TextUtils;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.audioinfo.AudioInfo;

/* JADX INFO: loaded from: classes4.dex */
public final class TrackQuery extends RecordTag {
    private final String album;
    private final String artist;
    private final int duration;
    private final String title;
    public static final Pattern NOT_WORD = Pattern.compile("[^\\p{L}\\p{N}]+");
    private static final Pattern AUDIO_EXT = Pattern.compile("\\.(mp3|m4a|flac|ogg|oga|opus|wav|aac|alac|wma)$", 2);
    private static final Pattern DECORATION = Pattern.compile("\\s*[(\\[][^)\\]]*(official|lyric|video|audio|visualizer|remaster|hq|hd)[^)\\]]*[)\\]]", 2);

    private /* synthetic */ boolean $record$equals(Object obj) {
        if (!(obj instanceof TrackQuery)) {
            return false;
        }
        TrackQuery trackQuery = (TrackQuery) obj;
        return this.duration == trackQuery.duration && Objects.equals(this.artist, trackQuery.artist) && Objects.equals(this.title, trackQuery.title) && Objects.equals(this.album, trackQuery.album);
    }

    private /* synthetic */ Object[] $record$getFieldsAsObjects() {
        return new Object[]{this.artist, this.title, this.album, Integer.valueOf(this.duration)};
    }

    public TrackQuery(String str, String str2, String str3, int i) {
        this.artist = str;
        this.title = str2;
        this.album = str3;
        this.duration = i;
    }

    public String album() {
        return this.album;
    }

    public String artist() {
        return this.artist;
    }

    public int duration() {
        return this.duration;
    }

    public final boolean equals(Object obj) {
        return $record$equals(obj);
    }

    public final int hashCode() {
        return TrackQuery$$ExternalSyntheticRecord0.m278m(this.duration, this.artist, this.title, this.album);
    }

    public String title() {
        return this.title;
    }

    public final String toString() {
        return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), TrackQuery.class, "artist;title;album;duration");
    }

    public static TrackQuery forMessage(MessageObject messageObject) {
        int iIndexOf;
        if (messageObject == null || messageObject.isVoice() || messageObject.isRoundVideo()) {
            return null;
        }
        AudioInfo playingAudioInfo = PlayerCovers.getPlayingAudioInfo(messageObject);
        String strClean = clean(messageObject.getMusicAuthor(false));
        String strClean2 = clean(messageObject.getMusicTitle(false));
        if (strClean2 != null) {
            strClean2 = AUDIO_EXT.matcher(strClean2).replaceFirst(_UrlKt.FRAGMENT_ENCODE_SET).replace('_', ' ').trim();
        }
        if (TextUtils.isEmpty(strClean) && strClean2 != null && (iIndexOf = strClean2.indexOf(" - ")) > 0) {
            strClean = strClean2.substring(0, iIndexOf).trim();
            strClean2 = strClean2.substring(iIndexOf + 3).trim();
        }
        String strStripDecorations = stripDecorations(strClean2);
        if (TextUtils.isEmpty(strStripDecorations)) {
            return null;
        }
        return new TrackQuery(strClean, strStripDecorations, clean(playingAudioInfo != null ? playingAudioInfo.getAlbum() : null), (int) Math.round(messageObject.getDuration()));
    }

    public String key() {
        StringBuilder sb = new StringBuilder();
        String str = this.artist;
        sb.append(str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str.toLowerCase(Locale.ROOT));
        sb.append("\u0001");
        sb.append(this.title.toLowerCase(Locale.ROOT));
        sb.append("\u0001");
        sb.append(this.duration);
        return sb.toString();
    }

    public static String normalize(String str) {
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : NOT_WORD.matcher(str.toLowerCase(Locale.ROOT)).replaceAll(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    private static String clean(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        return strTrim;
    }

    private static String stripDecorations(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = DECORATION.matcher(str).replaceAll(_UrlKt.FRAGMENT_ENCODE_SET).trim();
        return strTrim.isEmpty() ? str : strTrim;
    }
}
