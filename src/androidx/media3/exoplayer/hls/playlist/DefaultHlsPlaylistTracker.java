package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import androidx.media3.exoplayer.hls.HlsDataSourceFactory;
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParser;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultHlsPlaylistTracker implements HlsPlaylistTracker, Loader.Callback<ParsingLoadable<HlsPlaylist>> {
    public static final HlsPlaylistTracker.Factory FACTORY = new HlsPlaylistTracker.Factory() { // from class: androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$$ExternalSyntheticLambda0
        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.Factory
        public final HlsPlaylistTracker createTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, CmcdConfiguration cmcdConfiguration, Supplier supplier) {
            return new DefaultHlsPlaylistTracker(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory, cmcdConfiguration, supplier);
        }
    };
    private ImmutableList<HlsRedundantGroup> audioRedundantGroups;
    private final HlsDataSourceFactory dataSourceFactory;
    private final Supplier<ReleasableExecutor> downloadExecutorSupplier;
    private MediaSourceEventListener.EventDispatcher eventDispatcher;
    private Loader initialPlaylistLoader;
    private long initialStartTimeUs;
    private boolean isLive;
    private final CopyOnWriteArrayList<HlsPlaylistTracker.PlaylistEventListener> listeners;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private HlsMultivariantPlaylist multivariantPlaylist;
    private final HlsPlaylistParserFactory playlistParserFactory;
    private Handler playlistRefreshHandler;
    private final double playlistStuckTargetDurationCoefficient;
    private HlsMediaPlaylist primaryMediaPlaylistSnapshot;
    private Uri primaryMediaPlaylistUrl;
    private HlsPlaylistTracker.PrimaryPlaylistListener primaryPlaylistListener;
    private final HashMap<Uri, RedundantGroupBundle> redundantGroupBundles;
    private ParserException redundantGroupListCreationError;
    private ImmutableList<HlsRedundantGroup> subtitleRedundantGroups;
    private ImmutableList<HlsRedundantGroup> variantRedundantGroups;
    private ImmutableList<HlsRedundantGroup> videoRedundantGroups;

    public static /* synthetic */ CmcdConfiguration access$3300(DefaultHlsPlaylistTracker defaultHlsPlaylistTracker) {
        defaultHlsPlaylistTracker.getClass();
        return null;
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, CmcdConfiguration cmcdConfiguration, Supplier<ReleasableExecutor> supplier) {
        this(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory, cmcdConfiguration, 3.5d, supplier);
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, CmcdConfiguration cmcdConfiguration, double d, Supplier<ReleasableExecutor> supplier) {
        this.dataSourceFactory = hlsDataSourceFactory;
        this.playlistParserFactory = hlsPlaylistParserFactory;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playlistStuckTargetDurationCoefficient = d;
        this.downloadExecutorSupplier = supplier;
        this.listeners = new CopyOnWriteArrayList<>();
        this.redundantGroupBundles = new HashMap<>();
        this.initialStartTimeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void start(Uri uri, MediaSourceEventListener.EventDispatcher eventDispatcher, HlsPlaylistTracker.PrimaryPlaylistListener primaryPlaylistListener) {
        Loader loader;
        this.playlistRefreshHandler = Util.createHandlerForCurrentLooper();
        this.eventDispatcher = eventDispatcher;
        this.primaryPlaylistListener = primaryPlaylistListener;
        ParsingLoadable parsingLoadable = new ParsingLoadable(this.dataSourceFactory.createDataSource(4), new DataSpec.Builder().setUri(uri).setFlags(1).build(), 4, this.playlistParserFactory.createPlaylistParser());
        Preconditions.checkState(this.initialPlaylistLoader == null);
        if (this.downloadExecutorSupplier != null) {
            loader = new Loader(this.downloadExecutorSupplier.get());
        } else {
            loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        }
        this.initialPlaylistLoader = loader;
        loader.startLoading(parsingLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(parsingLoadable.type));
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.primaryMediaPlaylistUrl = null;
        this.primaryMediaPlaylistSnapshot = null;
        this.multivariantPlaylist = null;
        this.variantRedundantGroups = null;
        this.videoRedundantGroups = null;
        this.audioRedundantGroups = null;
        this.subtitleRedundantGroups = null;
        this.redundantGroupListCreationError = null;
        this.initialStartTimeUs = -9223372036854775807L;
        this.initialPlaylistLoader.release();
        this.initialPlaylistLoader = null;
        Iterator<RedundantGroupBundle> it = this.redundantGroupBundles.values().iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.playlistRefreshHandler.removeCallbacksAndMessages(null);
        this.playlistRefreshHandler = null;
        this.redundantGroupBundles.clear();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void addListener(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        Preconditions.checkNotNull(playlistEventListener);
        this.listeners.add(playlistEventListener);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void removeListener(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        this.listeners.remove(playlistEventListener);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public HlsMultivariantPlaylist getMultivariantPlaylist() {
        return this.multivariantPlaylist;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public HlsMediaPlaylist getPlaylistSnapshot(Uri uri, boolean z) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle == null) {
            return null;
        }
        HlsMediaPlaylist playlistSnapshot = redundantGroupBundle.getPlaylistSnapshot(uri);
        if (playlistSnapshot != null && z) {
            maybeSetPrimaryUrl(uri);
            maybeActivateForPlayback(uri);
        }
        return playlistSnapshot;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public long getInitialStartTimeUs() {
        return this.initialStartTimeUs;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean isSnapshotValid(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle == null) {
            return false;
        }
        return redundantGroupBundle.isSnapshotValid(uri);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void maybeThrowPrimaryPlaylistRefreshError() throws IOException {
        Loader loader = this.initialPlaylistLoader;
        if (loader != null) {
            loader.maybeThrowError();
        }
        ParserException parserException = this.redundantGroupListCreationError;
        if (parserException != null) {
            throw parserException;
        }
        Uri uri = this.primaryMediaPlaylistUrl;
        if (uri != null) {
            maybeThrowPlaylistRefreshError(uri);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void maybeThrowPlaylistRefreshError(Uri uri) throws IOException {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle != null) {
            redundantGroupBundle.maybeThrowPlaylistRefreshError(uri);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void refreshPlaylist(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle != null) {
            redundantGroupBundle.loadPlaylist(uri, true);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean isLive() {
        return this.isLive;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean excludeMediaPlaylist(Uri uri, long j) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle != null) {
            return redundantGroupBundle.excludePlaylist(uri, j);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean isExcluded(Uri uri, long j) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle != null) {
            return redundantGroupBundle.isExcluded(uri, j);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean isExcluded(HlsRedundantGroup hlsRedundantGroup, long j) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(hlsRedundantGroup.getCurrentPlaylistUrl());
        if (redundantGroupBundle != null) {
            return redundantGroupBundle.isExcluded(j);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void deactivatePlaylistForPlayback(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle != null) {
            redundantGroupBundle.setActiveForPlayback(uri, false);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public HlsRedundantGroup getRedundantGroup(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = this.redundantGroupBundles.get(uri);
        if (redundantGroupBundle != null) {
            return redundantGroupBundle.redundantGroup;
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public ImmutableList<HlsRedundantGroup> getRedundantGroups(int i) {
        if (i == 0) {
            return this.variantRedundantGroups;
        }
        if (i == 1) {
            return this.videoRedundantGroups;
        }
        if (i == 2) {
            return this.audioRedundantGroups;
        }
        if (i != 3) {
            return null;
        }
        return this.subtitleRedundantGroups;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadStarted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, int i) {
        LoadEventInfo loadEventInfo;
        if (i == 0) {
            loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, j);
        } else {
            loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        }
        this.eventDispatcher.loadStarted(loadEventInfo, parsingLoadable.type, i);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
        HlsMultivariantPlaylist hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist;
        HlsPlaylist result = parsingLoadable.getResult();
        boolean z = result instanceof HlsMediaPlaylist;
        if (z) {
            hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist = HlsMultivariantPlaylist.createSingleVariantMultivariantPlaylist(result.baseUri);
        } else {
            hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist = (HlsMultivariantPlaylist) result;
        }
        this.multivariantPlaylist = hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist;
        try {
            this.variantRedundantGroups = HlsRedundantGroup.createVariantRedundantGroupList(hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist.variants);
            this.videoRedundantGroups = HlsRedundantGroup.createRenditionRedundantGroupList(hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist.videos);
            this.audioRedundantGroups = HlsRedundantGroup.createRenditionRedundantGroupList(hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist.audios);
            this.subtitleRedundantGroups = HlsRedundantGroup.createRenditionRedundantGroupList(hlsMultivariantPlaylistCreateSingleVariantMultivariantPlaylist.subtitles);
            this.primaryMediaPlaylistUrl = this.variantRedundantGroups.get(0).getCurrentPlaylistUrl();
            this.listeners.add(new FirstPrimaryMediaPlaylistListener());
            createBundles();
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) Preconditions.checkNotNull(this.redundantGroupBundles.get(this.primaryMediaPlaylistUrl));
            if (z) {
                redundantGroupBundle.processLoadedPlaylist(parsingLoadable.getUri(), (HlsMediaPlaylist) result, loadEventInfo);
            } else {
                redundantGroupBundle.loadPlaylist(this.primaryMediaPlaylistUrl, false);
            }
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
            this.eventDispatcher.loadCompleted(loadEventInfo, 4);
        } catch (ParserException e) {
            this.redundantGroupListCreationError = e;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.eventDispatcher.loadCanceled(loadEventInfo, 4);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException, int i) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i));
        boolean z = retryDelayMsFor == -9223372036854775807L;
        this.eventDispatcher.loadError(loadEventInfo, parsingLoadable.type, iOException, z);
        if (z) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }
        if (z) {
            return Loader.DONT_RETRY_FATAL;
        }
        return Loader.createRetryAction(false, retryDelayMsFor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean maybeSelectNewPrimaryUrl() {
        ImmutableList<HlsRedundantGroup> immutableList = this.variantRedundantGroups;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < immutableList.size(); i++) {
            Uri currentPlaylistUrl = immutableList.get(i).getCurrentPlaylistUrl();
            RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) Preconditions.checkNotNull(this.redundantGroupBundles.get(currentPlaylistUrl));
            if (!redundantGroupBundle.isExcluded(currentPlaylistUrl, jElapsedRealtime)) {
                this.primaryMediaPlaylistUrl = currentPlaylistUrl;
                redundantGroupBundle.loadPlaylist(currentPlaylistUrl, getRequestUriForPrimaryChange(currentPlaylistUrl));
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeSetPrimaryUrl(Uri uri) {
        if (uri.equals(this.primaryMediaPlaylistUrl) || !isVariantUrl(uri)) {
            return;
        }
        HlsMediaPlaylist hlsMediaPlaylist = this.primaryMediaPlaylistSnapshot;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.hasEndTag) {
            this.primaryMediaPlaylistUrl = uri;
            RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) Preconditions.checkNotNull(this.redundantGroupBundles.get(uri));
            HlsMediaPlaylist playlistSnapshot = redundantGroupBundle.getPlaylistSnapshot(uri);
            if (playlistSnapshot != null && playlistSnapshot.hasEndTag) {
                this.primaryMediaPlaylistSnapshot = playlistSnapshot;
                this.primaryPlaylistListener.onPrimaryPlaylistRefreshed(playlistSnapshot);
            } else {
                redundantGroupBundle.loadPlaylist(uri, getRequestUriForPrimaryChange(uri));
            }
        }
    }

    private void maybeActivateForPlayback(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) Preconditions.checkNotNull(this.redundantGroupBundles.get(uri));
        if (redundantGroupBundle.isActiveForPlayback(uri)) {
            return;
        }
        redundantGroupBundle.setActiveForPlayback(uri, true);
        HlsMediaPlaylist playlistSnapshot = redundantGroupBundle.getPlaylistSnapshot(uri);
        if (playlistSnapshot == null || playlistSnapshot.hasEndTag) {
            return;
        }
        redundantGroupBundle.loadPlaylist(uri, true);
    }

    private Uri getRequestUriForPrimaryChange(Uri uri) {
        HlsMediaPlaylist.RenditionReport renditionReport;
        HlsMediaPlaylist hlsMediaPlaylist = this.primaryMediaPlaylistSnapshot;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.serverControl.canBlockReload || (renditionReport = hlsMediaPlaylist.renditionReports.get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(renditionReport.lastMediaSequence));
        int i = renditionReport.lastPartIndex;
        if (i != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i));
        }
        return builderBuildUpon.build();
    }

    private boolean isVariantUrl(Uri uri) {
        List<HlsMultivariantPlaylist.Variant> list = this.multivariantPlaylist.variants;
        for (int i = 0; i < list.size(); i++) {
            if (uri.equals(list.get(i).url)) {
                return true;
            }
        }
        return false;
    }

    private void createBundles() {
        createBundles(this.variantRedundantGroups);
        createBundles(this.videoRedundantGroups);
        createBundles(this.audioRedundantGroups);
        createBundles(this.subtitleRedundantGroups);
    }

    private void createBundles(List<HlsRedundantGroup> list) {
        for (int i = 0; i < list.size(); i++) {
            HlsRedundantGroup hlsRedundantGroup = list.get(i);
            RedundantGroupBundle redundantGroupBundle = new RedundantGroupBundle(hlsRedundantGroup);
            UnmodifiableIterator<Uri> it = hlsRedundantGroup.getAllPlaylistUrls().iterator();
            while (it.hasNext()) {
                this.redundantGroupBundles.put(it.next(), redundantGroupBundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlaylistUpdated(Uri uri, HlsMediaPlaylist hlsMediaPlaylist) {
        if (uri.equals(this.primaryMediaPlaylistUrl)) {
            if (this.primaryMediaPlaylistSnapshot == null) {
                this.isLive = !hlsMediaPlaylist.hasEndTag;
                this.initialStartTimeUs = hlsMediaPlaylist.startTimeUs;
            }
            this.primaryMediaPlaylistSnapshot = hlsMediaPlaylist;
            this.primaryPlaylistListener.onPrimaryPlaylistRefreshed(hlsMediaPlaylist);
        }
        Iterator<HlsPlaylistTracker.PlaylistEventListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaylistChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyPlaylistError(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        Iterator<HlsPlaylistTracker.PlaylistEventListener> it = this.listeners.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            z2 |= !it.next().onPlaylistError(uri, loadErrorInfo, z);
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HlsMediaPlaylist getLatestPlaylistSnapshot(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.isNewerThan(hlsMediaPlaylist)) {
            return hlsMediaPlaylist2.copyWith(getLoadedPlaylistStartTimeUs(hlsMediaPlaylist, hlsMediaPlaylist2), getLoadedPlaylistDiscontinuitySequence(hlsMediaPlaylist, hlsMediaPlaylist2));
        }
        return hlsMediaPlaylist2.hasEndTag ? hlsMediaPlaylist.copyWithEndTag() : hlsMediaPlaylist;
    }

    private long getLoadedPlaylistStartTimeUs(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.hasProgramDateTime) {
            return hlsMediaPlaylist2.startTimeUs;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        long j = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.startTimeUs : 0L;
        if (hlsMediaPlaylist != null) {
            int size = hlsMediaPlaylist.segments.size();
            HlsMediaPlaylist.Segment firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2);
            if (firstOldOverlappingSegment != null) {
                return hlsMediaPlaylist.startTimeUs + firstOldOverlappingSegment.relativeStartTimeUs;
            }
            if (size == hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence) {
                return hlsMediaPlaylist.getEndTimeUs();
            }
        }
        return j;
    }

    private int getLoadedPlaylistDiscontinuitySequence(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        HlsMediaPlaylist.Segment firstOldOverlappingSegment;
        if (hlsMediaPlaylist2.hasDiscontinuitySequence) {
            return hlsMediaPlaylist2.discontinuitySequence;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        int i = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.discontinuitySequence : 0;
        return (hlsMediaPlaylist == null || (firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2)) == null) ? i : (hlsMediaPlaylist.discontinuitySequence + firstOldOverlappingSegment.relativeDiscontinuitySequence) - hlsMediaPlaylist2.segments.get(0).relativeDiscontinuitySequence;
    }

    private static HlsMediaPlaylist.Segment getFirstOldOverlappingSegment(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        int i = (int) (hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence);
        List<HlsMediaPlaylist.Segment> list = hlsMediaPlaylist.segments;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    public final class RedundantGroupBundle {
        private final Map<Uri, MediaPlaylistBundle> playlistBundles;
        private final HlsRedundantGroup redundantGroup;

        private RedundantGroupBundle(HlsRedundantGroup hlsRedundantGroup) {
            this.redundantGroup = hlsRedundantGroup;
            this.playlistBundles = createMediaPlaylistBundles(hlsRedundantGroup);
        }

        private Map<Uri, MediaPlaylistBundle> createMediaPlaylistBundles(HlsRedundantGroup hlsRedundantGroup) {
            HashMap map = new HashMap();
            UnmodifiableIterator<String> it = hlsRedundantGroup.getAllPathwayIds().iterator();
            while (it.hasNext()) {
                String next = it.next();
                Uri uri = (Uri) Preconditions.checkNotNull(hlsRedundantGroup.getPlaylistUrl(next));
                map.put(uri, new MediaPlaylistBundle(uri, next));
            }
            return map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public HlsMediaPlaylist getPlaylistSnapshot(Uri uri) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            return ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).getPlaylistSnapshot();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isSnapshotValid(Uri uri) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            return ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).isSnapshotValid();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadPlaylist(Uri uri, boolean z) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).loadPlaylist(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadPlaylist(Uri uri, Uri uri2) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).loadPlaylistInternal(uri2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void processLoadedPlaylist(Uri uri, HlsMediaPlaylist hlsMediaPlaylist, LoadEventInfo loadEventInfo) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).processLoadedPlaylist(hlsMediaPlaylist, loadEventInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void maybeThrowPlaylistRefreshError(Uri uri) throws IOException {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).maybeThrowPlaylistRefreshError();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isActiveForPlayback(Uri uri) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            return ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).isActiveForPlayback();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActiveForPlayback(Uri uri, boolean z) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).setActiveForPlayback(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isExcluded(Uri uri, long j) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            return j <= ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).excludeUntilMs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isExcluded(long j) {
            Iterator<MediaPlaylistBundle> it = this.playlistBundles.values().iterator();
            boolean z = true;
            while (it.hasNext()) {
                z &= j <= it.next().excludeUntilMs;
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean excludePlaylist(Uri uri, long j) {
            Preconditions.checkState(this.playlistBundles.containsKey(uri));
            ((MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(uri))).excludePlaylist(j);
            if (switchPathway()) {
                return true;
            }
            return !(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl == null || uri.equals(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl)) || DefaultHlsPlaylistTracker.this.maybeSelectNewPrimaryUrl();
        }

        private boolean switchPathway() {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            for (MediaPlaylistBundle mediaPlaylistBundle : this.playlistBundles.values()) {
                if (!mediaPlaylistBundle.pathwayId.equals(this.redundantGroup.getCurrentPathwayId()) && jElapsedRealtime > mediaPlaylistBundle.excludeUntilMs) {
                    Uri currentPlaylistUrl = this.redundantGroup.getCurrentPlaylistUrl();
                    this.redundantGroup.setCurrentPathwayId(mediaPlaylistBundle.pathwayId);
                    if (currentPlaylistUrl.equals(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl)) {
                        DefaultHlsPlaylistTracker.this.maybeSetPrimaryUrl(mediaPlaylistBundle.playlistUrl);
                    }
                    MediaPlaylistBundle mediaPlaylistBundle2 = (MediaPlaylistBundle) Preconditions.checkNotNull(this.playlistBundles.get(currentPlaylistUrl));
                    mediaPlaylistBundle.setActiveForPlayback(mediaPlaylistBundle2.isActiveForPlayback());
                    mediaPlaylistBundle2.setActiveForPlayback(false);
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            Iterator<MediaPlaylistBundle> it = this.playlistBundles.values().iterator();
            while (it.hasNext()) {
                it.next().release();
            }
        }
    }

    public final class MediaPlaylistBundle implements Loader.Callback<ParsingLoadable<HlsPlaylist>> {
        private boolean activeForPlayback;
        private long earliestNextLoadTimeMs;
        private long excludeUntilMs;
        private long lastSnapshotChangeMs;
        private long lastSnapshotLoadMs;
        private boolean loadPending;
        private final DataSource mediaPlaylistDataSource;
        private final Loader mediaPlaylistLoader;
        private final String pathwayId;
        private IOException playlistError;
        private HlsMediaPlaylist playlistSnapshot;
        private final Uri playlistUrl;

        private MediaPlaylistBundle(Uri uri, String str) {
            Loader loader;
            this.playlistUrl = uri;
            this.pathwayId = str;
            if (DefaultHlsPlaylistTracker.this.downloadExecutorSupplier != null) {
                loader = new Loader((ReleasableExecutor) DefaultHlsPlaylistTracker.this.downloadExecutorSupplier.get());
            } else {
                loader = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");
            }
            this.mediaPlaylistLoader = loader;
            this.mediaPlaylistDataSource = DefaultHlsPlaylistTracker.this.dataSourceFactory.createDataSource(4);
        }

        public HlsMediaPlaylist getPlaylistSnapshot() {
            return this.playlistSnapshot;
        }

        public boolean isSnapshotValid() {
            int i;
            if (this.playlistSnapshot == null) {
                return false;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, Util.usToMs(this.playlistSnapshot.durationUs));
            HlsMediaPlaylist hlsMediaPlaylist = this.playlistSnapshot;
            return hlsMediaPlaylist.hasEndTag || (i = hlsMediaPlaylist.playlistType) == 2 || i == 1 || this.lastSnapshotLoadMs + jMax > jElapsedRealtime;
        }

        public void loadPlaylist(boolean z) {
            loadPlaylistInternal(z ? getMediaPlaylistUriForReload() : this.playlistUrl);
        }

        public void maybeThrowPlaylistRefreshError() throws IOException {
            this.mediaPlaylistLoader.maybeThrowError();
            IOException iOException = this.playlistError;
            if (iOException != null) {
                throw iOException;
            }
        }

        public boolean isActiveForPlayback() {
            return this.activeForPlayback;
        }

        public void setActiveForPlayback(boolean z) {
            this.activeForPlayback = z;
        }

        public void release() {
            this.mediaPlaylistLoader.release();
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadStarted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, int i) {
            LoadEventInfo loadEventInfo;
            if (i == 0) {
                loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, j);
            } else {
                loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            }
            DefaultHlsPlaylistTracker.this.eventDispatcher.loadStarted(loadEventInfo, parsingLoadable.type, i);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
            HlsPlaylist result = parsingLoadable.getResult();
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            if (result instanceof HlsMediaPlaylist) {
                processLoadedPlaylist((HlsMediaPlaylist) result, loadEventInfo);
                DefaultHlsPlaylistTracker.this.eventDispatcher.loadCompleted(loadEventInfo, 4);
            } else {
                this.playlistError = ParserException.createForMalformedManifest("Loaded playlist has unexpected type.", null);
                DefaultHlsPlaylistTracker.this.eventDispatcher.loadError(loadEventInfo, 4, this.playlistError, true);
            }
            DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
            DefaultHlsPlaylistTracker.this.eventDispatcher.loadCanceled(loadEventInfo, 4);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException, int i) {
            Loader.LoadErrorAction loadErrorActionCreateRetryAction;
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            boolean z = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if ((parsingLoadable.getUri().getQueryParameter("_HLS_msn") != null) || z) {
                int i2 = iOException instanceof HttpDataSource$InvalidResponseCodeException ? ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z || i2 == 400 || i2 == 503) {
                    this.earliestNextLoadTimeMs = SystemClock.elapsedRealtime();
                    loadPlaylist(false);
                    ((MediaSourceEventListener.EventDispatcher) Util.castNonNull(DefaultHlsPlaylistTracker.this.eventDispatcher)).loadError(loadEventInfo, parsingLoadable.type, iOException, true);
                    return Loader.DONT_RETRY;
                }
            }
            LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i);
            if (DefaultHlsPlaylistTracker.this.notifyPlaylistError(this.playlistUrl, loadErrorInfo, false)) {
                long retryDelayMsFor = DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getRetryDelayMsFor(loadErrorInfo);
                if (retryDelayMsFor != -9223372036854775807L) {
                    loadErrorActionCreateRetryAction = Loader.createRetryAction(false, retryDelayMsFor);
                } else {
                    loadErrorActionCreateRetryAction = Loader.DONT_RETRY_FATAL;
                }
            } else {
                loadErrorActionCreateRetryAction = Loader.DONT_RETRY;
            }
            boolean zIsRetry = loadErrorActionCreateRetryAction.isRetry();
            DefaultHlsPlaylistTracker.this.eventDispatcher.loadError(loadEventInfo, parsingLoadable.type, iOException, !zIsRetry);
            if (!zIsRetry) {
                DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
            }
            return loadErrorActionCreateRetryAction;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadPlaylistInternal(final Uri uri) {
            this.excludeUntilMs = 0L;
            if (this.loadPending || this.mediaPlaylistLoader.isLoading() || this.mediaPlaylistLoader.hasFatalError()) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime < this.earliestNextLoadTimeMs) {
                this.loadPending = true;
                DefaultHlsPlaylistTracker.this.playlistRefreshHandler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultHlsPlaylistTracker.MediaPlaylistBundle.$r8$lambda$tODoFoTL93tNogJolJloDdCGWgE(this.f$0, uri);
                    }
                }, this.earliestNextLoadTimeMs - jElapsedRealtime);
            } else {
                loadPlaylistImmediately(uri);
            }
        }

        public static /* synthetic */ void $r8$lambda$tODoFoTL93tNogJolJloDdCGWgE(MediaPlaylistBundle mediaPlaylistBundle, Uri uri) {
            mediaPlaylistBundle.loadPending = false;
            mediaPlaylistBundle.loadPlaylistImmediately(uri);
        }

        private void loadPlaylistImmediately(Uri uri) {
            ParsingLoadable.Parser<HlsPlaylist> parserCreatePlaylistParser = DefaultHlsPlaylistTracker.this.playlistParserFactory.createPlaylistParser(DefaultHlsPlaylistTracker.this.multivariantPlaylist, this.playlistSnapshot);
            DataSpec dataSpecBuild = new DataSpec.Builder().setUri(uri).setFlags(1).build();
            DefaultHlsPlaylistTracker.access$3300(DefaultHlsPlaylistTracker.this);
            ParsingLoadable parsingLoadable = new ParsingLoadable(this.mediaPlaylistDataSource, dataSpecBuild, 4, parserCreatePlaylistParser);
            this.mediaPlaylistLoader.startLoading(parsingLoadable, this, DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(parsingLoadable.type));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void processLoadedPlaylist(HlsMediaPlaylist hlsMediaPlaylist, LoadEventInfo loadEventInfo) {
            boolean z;
            long j;
            long j2;
            HlsMediaPlaylist hlsMediaPlaylist2 = this.playlistSnapshot;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.lastSnapshotLoadMs = jElapsedRealtime;
            HlsMediaPlaylist latestPlaylistSnapshot = DefaultHlsPlaylistTracker.this.getLatestPlaylistSnapshot(hlsMediaPlaylist2, hlsMediaPlaylist);
            this.playlistSnapshot = latestPlaylistSnapshot;
            IOException playlistStuckException = null;
            if (latestPlaylistSnapshot != hlsMediaPlaylist2) {
                this.playlistError = null;
                this.lastSnapshotChangeMs = jElapsedRealtime;
                DefaultHlsPlaylistTracker.this.onPlaylistUpdated(this.playlistUrl, latestPlaylistSnapshot);
            } else if (!latestPlaylistSnapshot.hasEndTag) {
                if (hlsMediaPlaylist.mediaSequence + ((long) hlsMediaPlaylist.segments.size()) < this.playlistSnapshot.mediaSequence) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(this.playlistUrl);
                    z = true;
                } else {
                    z = false;
                    if (jElapsedRealtime - this.lastSnapshotChangeMs > Util.usToMs(r13.targetDurationUs) * DefaultHlsPlaylistTracker.this.playlistStuckTargetDurationCoefficient) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(this.playlistUrl);
                    }
                }
                if (playlistStuckException != null) {
                    this.playlistError = playlistStuckException;
                    DefaultHlsPlaylistTracker.this.notifyPlaylistError(this.playlistUrl, new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(4), playlistStuckException, 1), z);
                }
            }
            HlsMediaPlaylist hlsMediaPlaylist3 = this.playlistSnapshot;
            if (hlsMediaPlaylist3.serverControl.canBlockReload) {
                if (hlsMediaPlaylist3 == hlsMediaPlaylist2) {
                    long j3 = hlsMediaPlaylist3.partTargetDurationUs;
                    if (j3 != -9223372036854775807L) {
                        j2 = j3 / 2;
                    } else {
                        j2 = hlsMediaPlaylist3.targetDurationUs / 2;
                    }
                    j = j2;
                } else {
                    j = 0;
                }
            } else if (hlsMediaPlaylist3 != hlsMediaPlaylist2) {
                j = hlsMediaPlaylist3.targetDurationUs;
            } else {
                j = hlsMediaPlaylist3.targetDurationUs / 2;
            }
            this.earliestNextLoadTimeMs = (jElapsedRealtime + Util.usToMs(j)) - loadEventInfo.loadDurationMs;
            if (this.playlistSnapshot.hasEndTag) {
                return;
            }
            if (this.playlistUrl.equals(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl) || this.activeForPlayback) {
                loadPlaylistInternal(getMediaPlaylistUriForReload());
            }
        }

        private Uri getMediaPlaylistUriForReload() {
            HlsMediaPlaylist hlsMediaPlaylist = this.playlistSnapshot;
            if (hlsMediaPlaylist != null) {
                HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
                if (serverControl.skipUntilUs != -9223372036854775807L || serverControl.canBlockReload) {
                    Uri.Builder builderBuildUpon = this.playlistUrl.buildUpon();
                    HlsMediaPlaylist hlsMediaPlaylist2 = this.playlistSnapshot;
                    if (hlsMediaPlaylist2.serverControl.canBlockReload) {
                        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(hlsMediaPlaylist2.mediaSequence + ((long) hlsMediaPlaylist2.segments.size())));
                        HlsMediaPlaylist hlsMediaPlaylist3 = this.playlistSnapshot;
                        if (hlsMediaPlaylist3.partTargetDurationUs != -9223372036854775807L) {
                            List<HlsMediaPlaylist.Part> list = hlsMediaPlaylist3.trailingParts;
                            int size = list.size();
                            if (!list.isEmpty() && ((HlsMediaPlaylist.Part) Iterables.getLast(list)).isPreload) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    HlsMediaPlaylist.ServerControl serverControl2 = this.playlistSnapshot.serverControl;
                    if (serverControl2.skipUntilUs != -9223372036854775807L) {
                        builderBuildUpon.appendQueryParameter("_HLS_skip", serverControl2.canSkipDateRanges ? "v2" : "YES");
                    }
                    return builderBuildUpon.build();
                }
            }
            return this.playlistUrl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void excludePlaylist(long j) {
            this.excludeUntilMs = SystemClock.elapsedRealtime() + j;
        }
    }

    public class FirstPrimaryMediaPlaylistListener implements HlsPlaylistTracker.PlaylistEventListener {
        private FirstPrimaryMediaPlaylistListener() {
        }

        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public void onPlaylistChanged() {
            DefaultHlsPlaylistTracker.this.listeners.remove(this);
        }

        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public boolean onPlaylistError(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
            RedundantGroupBundle redundantGroupBundle;
            if (DefaultHlsPlaylistTracker.this.primaryMediaPlaylistSnapshot != null) {
                return false;
            }
            LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getFallbackSelectionFor(createFallbackOptions(uri), loadErrorInfo);
            if (fallbackSelectionFor == null || (redundantGroupBundle = (RedundantGroupBundle) DefaultHlsPlaylistTracker.this.redundantGroupBundles.get(uri)) == null) {
                return false;
            }
            return redundantGroupBundle.excludePlaylist(uri, fallbackSelectionFor.exclusionDurationMs);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private LoadErrorHandlingPolicy.FallbackOptions createFallbackOptions(Uri uri) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            HlsRedundantGroup hlsRedundantGroup = ((RedundantGroupBundle) Preconditions.checkNotNull((RedundantGroupBundle) DefaultHlsPlaylistTracker.this.redundantGroupBundles.get(uri))).redundantGroup;
            int size = hlsRedundantGroup.size();
            UnmodifiableIterator<Uri> it = hlsRedundantGroup.getAllPlaylistUrls().iterator();
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                if (DefaultHlsPlaylistTracker.this.isExcluded(it.next(), jElapsedRealtime)) {
                    i2++;
                }
            }
            int size2 = DefaultHlsPlaylistTracker.this.variantRedundantGroups.size();
            UnmodifiableIterator it2 = DefaultHlsPlaylistTracker.this.variantRedundantGroups.iterator();
            while (it2.hasNext()) {
                if (DefaultHlsPlaylistTracker.this.isExcluded((HlsRedundantGroup) it2.next(), jElapsedRealtime)) {
                    i++;
                }
            }
            return new LoadErrorHandlingPolicy.FallbackOptions(size, i2, size2, i);
        }
    }
}
