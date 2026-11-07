package androidx.media3.common;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Longs;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Metadata {
    private final Entry[] entries;
    public final long presentationTimeUs;

    public interface Entry {
        default byte[] getWrappedMetadataBytes() {
            return null;
        }

        default Format getWrappedMetadataFormat() {
            return null;
        }

        default void populateMediaMetadata(MediaMetadata.Builder builder) {
        }
    }

    public Metadata(Entry... entryArr) {
        this(-9223372036854775807L, entryArr);
    }

    public Metadata(long j, Entry... entryArr) {
        this.presentationTimeUs = j;
        this.entries = entryArr;
    }

    public Metadata(List<? extends Entry> list) {
        this((Entry[]) list.toArray(new Entry[0]));
    }

    public Metadata(long j, List<? extends Entry> list) {
        this(j, (Entry[]) list.toArray(new Entry[0]));
    }

    public int length() {
        return this.entries.length;
    }

    public Entry get(int i) {
        return this.entries[i];
    }

    public <T extends Entry> T getFirstEntryOfType(Class<T> cls) {
        return (T) getFirstMatchingEntry(cls, Predicates.alwaysTrue());
    }

    public <T extends Entry> T getFirstMatchingEntry(Class<T> cls, Predicate<T> predicate) {
        for (Entry entry : this.entries) {
            T t = (T) entryIfMatches(entry, cls, predicate);
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    public <T extends Entry> ImmutableList<T> getEntriesOfType(Class<T> cls) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Entry entry : this.entries) {
            if (cls.isAssignableFrom(entry.getClass())) {
                builder.add(cls.cast(entry));
            }
        }
        return builder.build();
    }

    public <T extends Entry> ImmutableList<T> getMatchingEntries(Class<T> cls, Predicate<T> predicate) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Entry entry : this.entries) {
            Entry entryEntryIfMatches = entryIfMatches(entry, cls, predicate);
            if (entryEntryIfMatches != null) {
                builder.add(entryEntryIfMatches);
            }
        }
        return builder.build();
    }

    private <T extends Entry> T entryIfMatches(Entry entry, Class<T> cls, Predicate<T> predicate) {
        if (!cls.isAssignableFrom(entry.getClass())) {
            return null;
        }
        T tCast = cls.cast(entry);
        if (predicate.apply(tCast)) {
            return tCast;
        }
        return null;
    }

    public Metadata copyWithAppendedEntriesFrom(Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
    }

    public Metadata copyWithAppendedEntries(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata(this.presentationTimeUs, (Entry[]) Util.nullSafeArrayConcatenation(this.entries, entryArr));
    }

    public Metadata copyWithPresentationTimeUs(long j) {
        return this.presentationTimeUs == j ? this : new Metadata(j, this.entries);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Metadata.class == obj.getClass()) {
            Metadata metadata = (Metadata) obj;
            if (Arrays.equals(this.entries, metadata.entries) && this.presentationTimeUs == metadata.presentationTimeUs) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.entries) * 31) + Longs.hashCode(this.presentationTimeUs);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("entries=");
        sb.append(Arrays.toString(this.entries));
        if (this.presentationTimeUs == -9223372036854775807L) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str = ", presentationTimeUs=" + this.presentationTimeUs;
        }
        sb.append(str);
        return sb.toString();
    }
}
