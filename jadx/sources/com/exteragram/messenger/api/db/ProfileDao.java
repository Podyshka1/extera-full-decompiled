package com.exteragram.messenger.api.db;

import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.dto.NowPlayingInfoDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface ProfileDao {
    Object deleteProfiles(List<Long> list, Continuation<? super Integer> continuation);

    Object getAll(Continuation<? super List<ProfileDTO>> continuation);

    Object getById(long j, Continuation<? super ProfileDTO> continuation);

    Object insertAll(List<ProfileDTO> list, Continuation<? super Unit> continuation);

    Object updateBadge(long j, BadgeDTO badgeDTO, Continuation<? super Integer> continuation);

    Object updateNowPlaying(long j, NowPlayingInfoDTO nowPlayingInfoDTO, Continuation<? super Integer> continuation);
}
