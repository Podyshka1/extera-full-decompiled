package com.exteragram.messenger.api.db;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.exteragram.messenger.ExteraConfig;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ApplicationLoader;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExteraDatabase extends RoomDatabase {
    public static final Companion Companion = new Companion(null);
    private static volatile ExteraDatabase INSTANCE;

    public abstract AddedRegDateDao addedRegDateDao();

    public abstract BoostySubscriberDao boostySubscriberDao();

    public abstract ProfileDao profileDao();

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private static final class Callback extends RoomDatabase.Callback {
            @Override // androidx.room.RoomDatabase.Callback
            public void onDestructiveMigration(SupportSQLiteDatabase db) {
                Intrinsics.checkNotNullParameter(db, "db");
                super.onDestructiveMigration(db);
                ExteraConfig.editor.remove("lastSyncTimestamp").apply();
            }
        }

        public final ExteraDatabase getInstance() {
            ExteraDatabase exteraDatabase;
            ExteraDatabase exteraDatabase2 = ExteraDatabase.INSTANCE;
            if (exteraDatabase2 != null) {
                return exteraDatabase2;
            }
            synchronized (this) {
                Context applicationContext = ApplicationLoader.applicationContext;
                Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                exteraDatabase = (ExteraDatabase) Room.databaseBuilder(applicationContext, ExteraDatabase.class, "extera-database").fallbackToDestructiveMigration(true).addCallback(new Callback()).addMigrations(MigrationsKt.getMIGRATION_1_2(), MigrationsKt.getMIGRATION_2_3(), MigrationsKt.getMIGRATION_3_4(), MigrationsKt.getMIGRATION_4_5()).build();
                ExteraDatabase.INSTANCE = exteraDatabase;
            }
            return exteraDatabase;
        }
    }
}
