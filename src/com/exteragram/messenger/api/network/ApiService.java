package com.exteragram.messenger.api.network;

import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import com.exteragram.messenger.api.dto.NowPlayingDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import java.util.List;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes.dex */
public interface ApiService {
    @GET("profiles")
    Object getAllProfiles(Continuation<? super Response<List<ProfileDTO>>> continuation);

    @GET("boosty-subscribers")
    Object getBoostySubscribers(Continuation<? super Response<List<BoostySubscriberDTO>>> continuation);

    @GET("profiles/{userId}/now-playing")
    Object getCurrentPlayingTrack(@Path("userId") long j, Continuation<? super Response<NowPlayingDTO>> continuation);

    @GET("profiles/updates")
    Object getUpdates(@Query("since") String str, Continuation<? super Response<List<ProfileDTO>>> continuation);
}
