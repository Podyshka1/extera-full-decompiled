package androidx.media3.extractor.metadata.vorbis;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import com.google.common.base.Ascii;
import com.google.common.primitives.Ints;

/* JADX INFO: loaded from: classes4.dex */
public final class VorbisComment implements Metadata.Entry {
    public final String key;
    public final String value;

    public VorbisComment(String str, String str2) {
        this.key = Ascii.toUpperCase(str);
        this.value = str2;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.key;
        str.getClass();
        switch (str) {
            case "TOTALTRACKS":
                Integer numTryParse = Ints.tryParse(this.value);
                if (numTryParse != null) {
                    builder.setTotalTrackCount(numTryParse);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer numTryParse2 = Ints.tryParse(this.value);
                if (numTryParse2 != null) {
                    builder.setTotalDiscCount(numTryParse2);
                    break;
                }
                break;
            case "TRACKNUMBER":
                Integer numTryParse3 = Ints.tryParse(this.value);
                if (numTryParse3 != null) {
                    builder.setTrackNumber(numTryParse3);
                    break;
                }
                break;
            case "ALBUM":
                builder.setAlbumTitle(this.value);
                break;
            case "GENRE":
                builder.setGenre(this.value);
                break;
            case "TITLE":
                builder.setTitle(this.value);
                break;
            case "DESCRIPTION":
                builder.setDescription(this.value);
                break;
            case "DISCNUMBER":
                Integer numTryParse4 = Ints.tryParse(this.value);
                if (numTryParse4 != null) {
                    builder.setDiscNumber(numTryParse4);
                    break;
                }
                break;
            case "ALBUMARTIST":
                builder.setAlbumArtist(this.value);
                break;
            case "ARTIST":
                builder.setArtist(this.value);
                break;
        }
    }

    public String toString() {
        return "VC: " + this.key + "=" + this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && VorbisComment.class == obj.getClass()) {
            VorbisComment vorbisComment = (VorbisComment) obj;
            if (this.key.equals(vorbisComment.key) && this.value.equals(vorbisComment.value)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.key.hashCode()) * 31) + this.value.hashCode();
    }
}
