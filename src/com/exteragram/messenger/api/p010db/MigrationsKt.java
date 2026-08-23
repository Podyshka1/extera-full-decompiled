package com.exteragram.messenger.api.p010db;

import androidx.room.migration.Migration;
import androidx.sqlite.p002db.SupportSQLiteDatabase;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class MigrationsKt {
    private static final Migration MIGRATION_1_2 = new Migration() { // from class: com.exteragram.messenger.api.db.MigrationsKt$MIGRATION_1_2$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }
    };
    private static final Migration MIGRATION_2_3 = new Migration() { // from class: com.exteragram.messenger.api.db.MigrationsKt$MIGRATION_2_3$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            db.execSQL("CREATE TABLE IF NOT EXISTS `AddedRegDateDTO` (`userId` INTEGER NOT NULL, PRIMARY KEY(`userId`))");
        }
    };
    private static final Migration MIGRATION_3_4 = new Migration() { // from class: com.exteragram.messenger.api.db.MigrationsKt$MIGRATION_3_4$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            db.execSQL("ALTER TABLE `ProfileDTO` ADD COLUMN `canChangeBadge` INTEGER");
        }
    };
    private static final Migration MIGRATION_4_5 = new Migration() { // from class: com.exteragram.messenger.api.db.MigrationsKt$MIGRATION_4_5$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            db.execSQL("CREATE TABLE IF NOT EXISTS `BoostySubscriberDTO` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `totalAmountRub` TEXT NOT NULL, `totalAmountUsd` TEXT NOT NULL, PRIMARY KEY(`id`))");
        }
    };

    public static final Migration getMIGRATION_1_2() {
        return MIGRATION_1_2;
    }

    public static final Migration getMIGRATION_2_3() {
        return MIGRATION_2_3;
    }

    public static final Migration getMIGRATION_3_4() {
        return MIGRATION_3_4;
    }

    public static final Migration getMIGRATION_4_5() {
        return MIGRATION_4_5;
    }
}
