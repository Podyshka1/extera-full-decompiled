package com.exteragram.messenger.api.p010db;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.dto.NowPlayingInfoDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import com.exteragram.messenger.api.model.ProfileType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class ProfileDao_Impl implements ProfileDao {
    public static final Companion Companion = new Companion(null);
    private final Converters __converters;
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfProfileDTO;

    /* JADX INFO: loaded from: classes4.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ProfileType.values().length];
            try {
                iArr[ProfileType.USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProfileType.CHAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ProfileStatus.values().length];
            try {
                iArr2[ProfileStatus.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ProfileStatus.DEVELOPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ProfileStatus.SUPPORTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public ProfileDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__converters = new Converters();
        this.__db = __db;
        this.__insertAdapterOfProfileDTO = new EntityInsertAdapter() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `ProfileDTO` (`id`,`type`,`status`,`badge`,`nowPlaying`,`deleted`,`canChangeBadge`) VALUES (?,?,?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, ProfileDTO entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindLong(1, entity.getId());
                statement.bindText(2, ProfileDao_Impl.this.__ProfileType_enumToString(entity.getType()));
                statement.bindText(3, ProfileDao_Impl.this.__ProfileStatus_enumToString(entity.getStatus()));
                String strFromBadgeDTO = ProfileDao_Impl.this.__converters.fromBadgeDTO(entity.getBadge());
                if (strFromBadgeDTO == null) {
                    statement.bindNull(4);
                } else {
                    statement.bindText(4, strFromBadgeDTO);
                }
                String strFromNowPlayingInfoDTO = ProfileDao_Impl.this.__converters.fromNowPlayingInfoDTO(entity.getNowPlaying());
                if (strFromNowPlayingInfoDTO == null) {
                    statement.bindNull(5);
                } else {
                    statement.bindText(5, strFromNowPlayingInfoDTO);
                }
                Boolean deleted = entity.getDeleted();
                if ((deleted != null ? Integer.valueOf(deleted.booleanValue() ? 1 : 0) : null) == null) {
                    statement.bindNull(6);
                } else {
                    statement.bindLong(6, r0.intValue());
                }
                Boolean canChangeBadge = entity.getCanChangeBadge();
                if ((canChangeBadge != null ? Integer.valueOf(canChangeBadge.booleanValue() ? 1 : 0) : null) == null) {
                    statement.bindNull(7);
                } else {
                    statement.bindLong(7, r1.intValue());
                }
            }
        };
    }

    @Override // com.exteragram.messenger.api.p010db.ProfileDao
    public Object insertAll(final List<ProfileDTO> list, Continuation<? super Unit> continuation) {
        Object objPerformSuspending = DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileDao_Impl.insertAll$lambda$0(this.f$0, list, (SQLiteConnection) obj);
            }
        }, continuation);
        return objPerformSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformSuspending : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertAll$lambda$0(ProfileDao_Impl profileDao_Impl, List list, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        profileDao_Impl.__insertAdapterOfProfileDTO.insert(_connection, (Iterable<Object>) list);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.api.p010db.ProfileDao
    public Object getAll(Continuation<? super List<ProfileDTO>> continuation) {
        final String str = "SELECT * FROM ProfileDTO";
        return DBUtil.performSuspending(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileDao_Impl.getAll$lambda$0(str, this, (SQLiteConnection) obj);
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAll$lambda$0(String str, ProfileDao_Impl profileDao_Impl, SQLiteConnection _connection) {
        Boolean boolValueOf;
        long j;
        Integer numValueOf;
        Boolean boolValueOf2;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "type");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "status");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "badge");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "nowPlaying");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "deleted");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "canChangeBadge");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow);
                ProfileType profileType__ProfileType_stringToEnum = profileDao_Impl.__ProfileType_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow2));
                ProfileStatus profileStatus__ProfileStatus_stringToEnum = profileDao_Impl.__ProfileStatus_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow3));
                BadgeDTO badgeDTO = profileDao_Impl.__converters.toBadgeDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow4) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow4));
                NowPlayingInfoDTO nowPlayingInfoDTO = profileDao_Impl.__converters.toNowPlayingInfoDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow5) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow5));
                Integer numValueOf2 = sQLiteStatementPrepare.isNull(columnIndexOrThrow6) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow6));
                if (numValueOf2 != null) {
                    boolValueOf = Boolean.valueOf(numValueOf2.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                if (sQLiteStatementPrepare.isNull(columnIndexOrThrow7)) {
                    j = j2;
                    numValueOf = null;
                } else {
                    j = j2;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow7));
                }
                if (numValueOf != null) {
                    boolValueOf2 = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf2 = null;
                }
                arrayList.add(new ProfileDTO(j, profileType__ProfileType_stringToEnum, profileStatus__ProfileStatus_stringToEnum, badgeDTO, nowPlayingInfoDTO, boolValueOf, boolValueOf2));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.p010db.ProfileDao
    public Object getById(final long j, Continuation<? super ProfileDTO> continuation) {
        final String str = "SELECT * FROM ProfileDTO WHERE id = ?";
        return DBUtil.performSuspending(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileDao_Impl.getById$lambda$0(str, j, this, (SQLiteConnection) obj);
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProfileDTO getById$lambda$0(String str, long j, ProfileDao_Impl profileDao_Impl, SQLiteConnection _connection) {
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        boolean z = true;
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "type");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "status");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "badge");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "nowPlaying");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "deleted");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "canChangeBadge");
            ProfileDTO profileDTO = null;
            Boolean boolValueOf2 = null;
            if (sQLiteStatementPrepare.step()) {
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow);
                ProfileType profileType__ProfileType_stringToEnum = profileDao_Impl.__ProfileType_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow2));
                ProfileStatus profileStatus__ProfileStatus_stringToEnum = profileDao_Impl.__ProfileStatus_stringToEnum(sQLiteStatementPrepare.getText(columnIndexOrThrow3));
                BadgeDTO badgeDTO = profileDao_Impl.__converters.toBadgeDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow4) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow4));
                NowPlayingInfoDTO nowPlayingInfoDTO = profileDao_Impl.__converters.toNowPlayingInfoDTO(sQLiteStatementPrepare.isNull(columnIndexOrThrow5) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow5));
                Integer numValueOf = sQLiteStatementPrepare.isNull(columnIndexOrThrow6) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow6));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                Integer numValueOf2 = sQLiteStatementPrepare.isNull(columnIndexOrThrow7) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow7));
                if (numValueOf2 != null) {
                    if (numValueOf2.intValue() == 0) {
                        z = false;
                    }
                    boolValueOf2 = Boolean.valueOf(z);
                }
                profileDTO = new ProfileDTO(j2, profileType__ProfileType_stringToEnum, profileStatus__ProfileStatus_stringToEnum, badgeDTO, nowPlayingInfoDTO, boolValueOf, boolValueOf2);
            }
            sQLiteStatementPrepare.close();
            return profileDTO;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.p010db.ProfileDao
    public Object deleteProfiles(final List<Long> list, Continuation<? super Integer> continuation) {
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM ProfileDTO WHERE id IN (");
        StringUtil.appendPlaceholders(sb, list.size());
        sb.append(")");
        final String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(ProfileDao_Impl.deleteProfiles$lambda$0(string, list, (SQLiteConnection) obj));
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int deleteProfiles$lambda$0(String str, List list, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i = 1;
            while (it.hasNext()) {
                sQLiteStatementPrepare.bindLong(i, ((Number) it.next()).longValue());
                i++;
            }
            sQLiteStatementPrepare.step();
            int totalChangedRows = SQLiteConnectionUtil.getTotalChangedRows(_connection);
            sQLiteStatementPrepare.close();
            return totalChangedRows;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.p010db.ProfileDao
    public Object updateNowPlaying(final long j, final NowPlayingInfoDTO nowPlayingInfoDTO, Continuation<? super Integer> continuation) {
        final String str = "UPDATE ProfileDTO SET nowPlaying = ? WHERE id = ?";
        return DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(ProfileDao_Impl.updateNowPlaying$lambda$0(str, this, nowPlayingInfoDTO, j, (SQLiteConnection) obj));
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int updateNowPlaying$lambda$0(String str, ProfileDao_Impl profileDao_Impl, NowPlayingInfoDTO nowPlayingInfoDTO, long j, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            String strFromNowPlayingInfoDTO = profileDao_Impl.__converters.fromNowPlayingInfoDTO(nowPlayingInfoDTO);
            if (strFromNowPlayingInfoDTO == null) {
                sQLiteStatementPrepare.bindNull(1);
            } else {
                sQLiteStatementPrepare.bindText(1, strFromNowPlayingInfoDTO);
            }
            sQLiteStatementPrepare.bindLong(2, j);
            sQLiteStatementPrepare.step();
            int totalChangedRows = SQLiteConnectionUtil.getTotalChangedRows(_connection);
            sQLiteStatementPrepare.close();
            return totalChangedRows;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.p010db.ProfileDao
    public Object updateBadge(final long j, final BadgeDTO badgeDTO, Continuation<? super Integer> continuation) {
        final String str = "UPDATE ProfileDTO SET badge = ? WHERE id = ?";
        return DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.ProfileDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(ProfileDao_Impl.updateBadge$lambda$0(str, this, badgeDTO, j, (SQLiteConnection) obj));
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int updateBadge$lambda$0(String str, ProfileDao_Impl profileDao_Impl, BadgeDTO badgeDTO, long j, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            String strFromBadgeDTO = profileDao_Impl.__converters.fromBadgeDTO(badgeDTO);
            if (strFromBadgeDTO == null) {
                sQLiteStatementPrepare.bindNull(1);
            } else {
                sQLiteStatementPrepare.bindText(1, strFromBadgeDTO);
            }
            sQLiteStatementPrepare.bindLong(2, j);
            sQLiteStatementPrepare.step();
            int totalChangedRows = SQLiteConnectionUtil.getTotalChangedRows(_connection);
            sQLiteStatementPrepare.close();
            return totalChangedRows;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String __ProfileType_enumToString(ProfileType profileType) {
        int i = WhenMappings.$EnumSwitchMapping$0[profileType.ordinal()];
        if (i == 1) {
            return "USER";
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "CHAT";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String __ProfileStatus_enumToString(ProfileStatus profileStatus) {
        int i = WhenMappings.$EnumSwitchMapping$1[profileStatus.ordinal()];
        if (i == 1) {
            return "DEFAULT";
        }
        if (i == 2) {
            return "DEVELOPER";
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "SUPPORTER";
    }

    private final ProfileType __ProfileType_stringToEnum(String str) {
        if (Intrinsics.areEqual(str, "USER")) {
            return ProfileType.USER;
        }
        if (Intrinsics.areEqual(str, "CHAT")) {
            return ProfileType.CHAT;
        }
        throw new IllegalArgumentException("Can't convert value to enum, unknown value: " + str);
    }

    private final ProfileStatus __ProfileStatus_stringToEnum(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode != -2032180703) {
            if (iHashCode != -1589053526) {
                if (iHashCode == -1528175460 && str.equals("SUPPORTER")) {
                    return ProfileStatus.SUPPORTER;
                }
            } else if (str.equals("DEVELOPER")) {
                return ProfileStatus.DEVELOPER;
            }
        } else if (str.equals("DEFAULT")) {
            return ProfileStatus.DEFAULT;
        }
        throw new IllegalArgumentException("Can't convert value to enum, unknown value: " + str);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<KClass> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
