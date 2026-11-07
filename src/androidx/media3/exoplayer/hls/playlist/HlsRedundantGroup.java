package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class HlsRedundantGroup {
    private String currentPathwayId;
    public final GroupKey groupKey;
    private final List<Integer> indicesInMultivariantPlaylist;
    private final HashMap<String, Uri> pathwayIdToPlaylistUrl;

    public static class GroupKey {
        public final Format format;
        public final String name;
        public final String stableId;

        public GroupKey(Format format, String str) {
            this(format, str, null);
        }

        public GroupKey(Format format, String str, String str2) {
            this.format = format.buildUpon().setId((String) null).setMetadata(null).build();
            this.stableId = str;
            this.name = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GroupKey)) {
                return false;
            }
            GroupKey groupKey = (GroupKey) obj;
            return Objects.equals(this.format, groupKey.format) && Objects.equals(this.stableId, groupKey.stableId) && Objects.equals(this.name, groupKey.name);
        }

        public int hashCode() {
            return Objects.hash(this.format, this.stableId, this.name);
        }
    }

    public HlsRedundantGroup(GroupKey groupKey, String str, Uri uri, int i) {
        this.groupKey = groupKey;
        HashMap<String, Uri> map = new HashMap<>();
        this.pathwayIdToPlaylistUrl = map;
        map.put(str, uri);
        this.currentPathwayId = str;
        ArrayList arrayList = new ArrayList();
        this.indicesInMultivariantPlaylist = arrayList;
        if (i != -1) {
            arrayList.add(Integer.valueOf(i));
        }
    }

    public void put(String str, Uri uri, int i) {
        this.pathwayIdToPlaylistUrl.put(str, uri);
        if (i != -1) {
            this.indicesInMultivariantPlaylist.add(Integer.valueOf(i));
        }
    }

    public int size() {
        return this.pathwayIdToPlaylistUrl.size();
    }

    public void setCurrentPathwayId(String str) {
        Preconditions.checkState(this.pathwayIdToPlaylistUrl.containsKey(str));
        this.currentPathwayId = str;
    }

    public String getCurrentPathwayId() {
        return this.currentPathwayId;
    }

    public ImmutableSet<String> getAllPathwayIds() {
        return ImmutableSet.copyOf((Collection) this.pathwayIdToPlaylistUrl.keySet());
    }

    public Uri getCurrentPlaylistUrl() {
        return (Uri) Preconditions.checkNotNull(this.pathwayIdToPlaylistUrl.get(this.currentPathwayId));
    }

    public Uri getPlaylistUrl(String str) {
        return this.pathwayIdToPlaylistUrl.get(str);
    }

    public ImmutableSet<Uri> getAllPlaylistUrls() {
        return ImmutableSet.copyOf((Collection) this.pathwayIdToPlaylistUrl.values());
    }

    public static ImmutableList<HlsRedundantGroup> createVariantRedundantGroupList(List<HlsMultivariantPlaylist.Variant> list) throws ParserException {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = list.get(i);
            propagateRedundantGroupList(variant.url, variant.pathwayId, i, arrayList, new GroupKey(variant.format, variant.stableVariantId), map, map2);
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public static ImmutableList<HlsRedundantGroup> createRenditionRedundantGroupList(List<HlsMultivariantPlaylist.Rendition> list) {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            HlsMultivariantPlaylist.Rendition rendition = list.get(i);
            if (rendition.url != null) {
                try {
                    propagateRedundantGroupList(rendition.url, null, i, arrayList, new GroupKey(rendition.format, rendition.stableRenditionId, rendition.name), map, map2);
                } catch (ParserException unused) {
                }
            }
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    private static void propagateRedundantGroupList(Uri uri, String str, int i, List<HlsRedundantGroup> list, GroupKey groupKey, Map<GroupKey, Integer> map, Map<GroupKey, Integer> map2) throws ParserException {
        Integer num = map.get(groupKey);
        if (num == null) {
            map2.put(groupKey, 0);
            if (str == null) {
                map2.put(groupKey, 1);
                str = ".";
            }
            HlsRedundantGroup hlsRedundantGroup = new HlsRedundantGroup(groupKey, str, uri, i);
            map.put(groupKey, Integer.valueOf(list.size()));
            list.add(hlsRedundantGroup);
            return;
        }
        if (str == null) {
            int iIntValue = ((Integer) Preconditions.checkNotNull(map2.get(groupKey))).intValue() + 1;
            String strRepeat = Strings.repeat(".", iIntValue);
            map2.put(groupKey, Integer.valueOf(iIntValue));
            str = strRepeat;
        }
        HlsRedundantGroup hlsRedundantGroup2 = list.get(num.intValue());
        Uri playlistUrl = hlsRedundantGroup2.getPlaylistUrl(str);
        if (playlistUrl != null && !uri.equals(playlistUrl)) {
            throw ParserException.createForMalformedManifest(String.format("Different playlist URLs are found for pathway ID %s within the HlsRedundantGroup", str), null);
        }
        hlsRedundantGroup2.put(str, uri, i);
    }
}
