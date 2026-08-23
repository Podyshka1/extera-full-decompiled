package androidx.work.impl;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.RawWorkInfoDao;
import androidx.work.impl.model.RawWorkInfoDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0003J)\u0010\u000f\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\u000e0\fH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00120\r0\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J1\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000e2\u001a\u0010\u0015\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00120\r\u0012\u0004\u0012\u00020\u00120\fH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00190.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020\u001c0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00100R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\u001f0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00100R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\"0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00100R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020%0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00100R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020(0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00100R\u001a\u00106\u001a\b\u0012\u0004\u0012\u00020+0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00100R\u001a\u00108\u001a\b\u0012\u0004\u0012\u0002070.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00100¨\u00069"}, d2 = {"Landroidx/work/impl/WorkDatabase_Impl;", "Landroidx/work/impl/WorkDatabase;", "<init>", "()V", "Landroidx/room/RoomOpenDelegate;", "createOpenDelegate", "()Landroidx/room/RoomOpenDelegate;", "Landroidx/room/InvalidationTracker;", "createInvalidationTracker", "()Landroidx/room/InvalidationTracker;", _UrlKt.FRAGMENT_ENCODE_SET, "clearAllTables", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", _UrlKt.FRAGMENT_ENCODE_SET, "getRequiredTypeConverterClasses", "()Ljava/util/Map;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/migration/AutoMigrationSpec;", "getRequiredAutoMigrationSpecClasses", "()Ljava/util/Set;", "autoMigrationSpecs", "Landroidx/room/migration/Migration;", "createAutoMigrations", "(Ljava/util/Map;)Ljava/util/List;", "Landroidx/work/impl/model/WorkSpecDao;", "workSpecDao", "()Landroidx/work/impl/model/WorkSpecDao;", "Landroidx/work/impl/model/DependencyDao;", "dependencyDao", "()Landroidx/work/impl/model/DependencyDao;", "Landroidx/work/impl/model/WorkTagDao;", "workTagDao", "()Landroidx/work/impl/model/WorkTagDao;", "Landroidx/work/impl/model/SystemIdInfoDao;", "systemIdInfoDao", "()Landroidx/work/impl/model/SystemIdInfoDao;", "Landroidx/work/impl/model/WorkNameDao;", "workNameDao", "()Landroidx/work/impl/model/WorkNameDao;", "Landroidx/work/impl/model/WorkProgressDao;", "workProgressDao", "()Landroidx/work/impl/model/WorkProgressDao;", "Landroidx/work/impl/model/PreferenceDao;", "preferenceDao", "()Landroidx/work/impl/model/PreferenceDao;", "Lkotlin/Lazy;", "_workSpecDao", "Lkotlin/Lazy;", "_dependencyDao", "_workTagDao", "_systemIdInfoDao", "_workNameDao", "_workProgressDao", "_preferenceDao", "Landroidx/work/impl/model/RawWorkInfoDao;", "_rawWorkInfoDao", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkDatabase_Impl extends WorkDatabase {
    private final Lazy<WorkSpecDao> _workSpecDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.$r8$lambda$EBCBMQRVkN1sQSZgY0tCFd1jjgA(this.f$0);
        }
    });
    private final Lazy<DependencyDao> _dependencyDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.m1780$r8$lambda$UR3dJSshz5ZBBq2DPAP4EXV70s(this.f$0);
        }
    });
    private final Lazy<WorkTagDao> _workTagDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.$r8$lambda$232E_xBZ836NRYMgTAYNO5qULN0(this.f$0);
        }
    });
    private final Lazy<SystemIdInfoDao> _systemIdInfoDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.$r8$lambda$VD7PkCdHr0pD6cL8vVPjuCZZsCo(this.f$0);
        }
    });
    private final Lazy<WorkNameDao> _workNameDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.m1778$r8$lambda$9rVe6bMn1RRzNPxGG5NcgNi1Xs(this.f$0);
        }
    });
    private final Lazy<WorkProgressDao> _workProgressDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.$r8$lambda$YXFG2V7GSqY1Fh14uyLBpxHvsJg(this.f$0);
        }
    });
    private final Lazy<PreferenceDao> _preferenceDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.m1779$r8$lambda$Q4e7dMsbchyXlG7si6nJ2SX0Hg(this.f$0);
        }
    });
    private final Lazy<RawWorkInfoDao> _rawWorkInfoDao = LazyKt.lazy(new Function0() { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.$r8$lambda$nTzsr7UbqjB1fFswZZ1aP5SIdIc(this.f$0);
        }
    });

    public static WorkSpecDao_Impl $r8$lambda$EBCBMQRVkN1sQSZgY0tCFd1jjgA(WorkDatabase_Impl workDatabase_Impl) {
        return new WorkSpecDao_Impl(workDatabase_Impl);
    }

    /* JADX INFO: renamed from: $r8$lambda$UR3dJSsh-z5ZBBq2DPAP4EXV70s, reason: not valid java name */
    public static DependencyDao_Impl m1780$r8$lambda$UR3dJSshz5ZBBq2DPAP4EXV70s(WorkDatabase_Impl workDatabase_Impl) {
        return new DependencyDao_Impl(workDatabase_Impl);
    }

    public static WorkTagDao_Impl $r8$lambda$232E_xBZ836NRYMgTAYNO5qULN0(WorkDatabase_Impl workDatabase_Impl) {
        return new WorkTagDao_Impl(workDatabase_Impl);
    }

    public static SystemIdInfoDao_Impl $r8$lambda$VD7PkCdHr0pD6cL8vVPjuCZZsCo(WorkDatabase_Impl workDatabase_Impl) {
        return new SystemIdInfoDao_Impl(workDatabase_Impl);
    }

    /* JADX INFO: renamed from: $r8$lambda$9rVe6bMn1RRzNP-xGG5NcgNi1Xs, reason: not valid java name */
    public static WorkNameDao_Impl m1778$r8$lambda$9rVe6bMn1RRzNPxGG5NcgNi1Xs(WorkDatabase_Impl workDatabase_Impl) {
        return new WorkNameDao_Impl(workDatabase_Impl);
    }

    public static WorkProgressDao_Impl $r8$lambda$YXFG2V7GSqY1Fh14uyLBpxHvsJg(WorkDatabase_Impl workDatabase_Impl) {
        return new WorkProgressDao_Impl(workDatabase_Impl);
    }

    /* JADX INFO: renamed from: $r8$lambda$Q4e7dMsbchyXlG7si6nJ2S-X0Hg, reason: not valid java name */
    public static PreferenceDao_Impl m1779$r8$lambda$Q4e7dMsbchyXlG7si6nJ2SX0Hg(WorkDatabase_Impl workDatabase_Impl) {
        return new PreferenceDao_Impl(workDatabase_Impl);
    }

    public static RawWorkInfoDao_Impl $r8$lambda$nTzsr7UbqjB1fFswZZ1aP5SIdIc(WorkDatabase_Impl workDatabase_Impl) {
        return new RawWorkInfoDao_Impl(workDatabase_Impl);
    }

    @Override // androidx.room.RoomDatabase
    public RoomOpenDelegate createOpenDelegate() {
        return new RoomOpenDelegate() { // from class: androidx.work.impl.WorkDatabase_Impl$createOpenDelegate$_openDelegate$1
            @Override // androidx.room.RoomOpenDelegate
            public void onCreate(SQLiteConnection connection) {
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPostMigrate(SQLiteConnection connection) {
            }

            {
                super(24, "08b926448d86528e697981ddd30459f7", "149fd8ad55885d3fe3549a37a0163243");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void createAllTables(SQLiteConnection connection) {
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.execSQL(connection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void dropAllTables(SQLiteConnection connection) {
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `Dependency`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkSpec`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkTag`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `SystemIdInfo`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkName`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `WorkProgress`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `Preference`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onOpen(SQLiteConnection connection) {
                SQLite.execSQL(connection, "PRAGMA foreign_keys = ON");
                this.this$0.internalInitInvalidationTracker(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPreMigrate(SQLiteConnection connection) {
                DBUtil.dropFtsSyncTriggers(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection connection) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                linkedHashMap.put("prerequisite_id", new TableInfo.Column("prerequisite_id", "TEXT", true, 2, null, 1));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("id")));
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("prerequisite_id"), CollectionsKt.listOf("id")));
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_work_spec_id", false, CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("ASC")));
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, CollectionsKt.listOf("prerequisite_id"), CollectionsKt.listOf("ASC")));
                TableInfo tableInfo = new TableInfo("Dependency", linkedHashMap, linkedHashSet, linkedHashSet2);
                TableInfo.Companion companion = TableInfo.INSTANCE;
                TableInfo tableInfo2 = companion.read(connection, "Dependency");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenDelegate.ValidationResult(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("id", new TableInfo.Column("id", "TEXT", true, 1, null, 1));
                linkedHashMap2.put("state", new TableInfo.Column("state", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("worker_class_name", new TableInfo.Column("worker_class_name", "TEXT", true, 0, null, 1));
                linkedHashMap2.put("input_merger_class_name", new TableInfo.Column("input_merger_class_name", "TEXT", true, 0, null, 1));
                linkedHashMap2.put("input", new TableInfo.Column("input", "BLOB", true, 0, null, 1));
                linkedHashMap2.put("output", new TableInfo.Column("output", "BLOB", true, 0, null, 1));
                linkedHashMap2.put("initial_delay", new TableInfo.Column("initial_delay", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("interval_duration", new TableInfo.Column("interval_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("flex_duration", new TableInfo.Column("flex_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("run_attempt_count", new TableInfo.Column("run_attempt_count", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("backoff_policy", new TableInfo.Column("backoff_policy", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("backoff_delay_duration", new TableInfo.Column("backoff_delay_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("last_enqueue_time", new TableInfo.Column("last_enqueue_time", "INTEGER", true, 0, "-1", 1));
                linkedHashMap2.put("minimum_retention_duration", new TableInfo.Column("minimum_retention_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("schedule_requested_at", new TableInfo.Column("schedule_requested_at", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("run_in_foreground", new TableInfo.Column("run_in_foreground", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("out_of_quota_policy", new TableInfo.Column("out_of_quota_policy", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("period_count", new TableInfo.Column("period_count", "INTEGER", true, 0, MVEL.VERSION_SUB, 1));
                linkedHashMap2.put("generation", new TableInfo.Column("generation", "INTEGER", true, 0, MVEL.VERSION_SUB, 1));
                linkedHashMap2.put("next_schedule_time_override", new TableInfo.Column("next_schedule_time_override", "INTEGER", true, 0, "9223372036854775807", 1));
                linkedHashMap2.put("next_schedule_time_override_generation", new TableInfo.Column("next_schedule_time_override_generation", "INTEGER", true, 0, MVEL.VERSION_SUB, 1));
                linkedHashMap2.put("stop_reason", new TableInfo.Column("stop_reason", "INTEGER", true, 0, "-256", 1));
                linkedHashMap2.put("trace_tag", new TableInfo.Column("trace_tag", "TEXT", false, 0, null, 1));
                linkedHashMap2.put("backoff_on_system_interruptions", new TableInfo.Column("backoff_on_system_interruptions", "INTEGER", false, 0, null, 1));
                linkedHashMap2.put("required_network_type", new TableInfo.Column("required_network_type", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("required_network_request", new TableInfo.Column("required_network_request", "BLOB", true, 0, "x''", 1));
                linkedHashMap2.put("requires_charging", new TableInfo.Column("requires_charging", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("requires_device_idle", new TableInfo.Column("requires_device_idle", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("requires_battery_not_low", new TableInfo.Column("requires_battery_not_low", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("requires_storage_not_low", new TableInfo.Column("requires_storage_not_low", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("trigger_content_update_delay", new TableInfo.Column("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("trigger_max_content_delay", new TableInfo.Column("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("content_uri_triggers", new TableInfo.Column("content_uri_triggers", "BLOB", true, 0, null, 1));
                LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, CollectionsKt.listOf("schedule_requested_at"), CollectionsKt.listOf("ASC")));
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_last_enqueue_time", false, CollectionsKt.listOf("last_enqueue_time"), CollectionsKt.listOf("ASC")));
                TableInfo tableInfo3 = new TableInfo("WorkSpec", linkedHashMap2, linkedHashSet3, linkedHashSet4);
                TableInfo tableInfo4 = companion.read(connection, "WorkSpec");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("tag", new TableInfo.Column("tag", "TEXT", true, 1, null, 1));
                linkedHashMap3.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
                LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                linkedHashSet5.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("id")));
                LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                linkedHashSet6.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("ASC")));
                TableInfo tableInfo5 = new TableInfo("WorkTag", linkedHashMap3, linkedHashSet5, linkedHashSet6);
                TableInfo tableInfo6 = companion.read(connection, "WorkTag");
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                linkedHashMap4.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                linkedHashMap4.put("generation", new TableInfo.Column("generation", "INTEGER", true, 2, MVEL.VERSION_SUB, 1));
                linkedHashMap4.put("system_id", new TableInfo.Column("system_id", "INTEGER", true, 0, null, 1));
                LinkedHashSet linkedHashSet7 = new LinkedHashSet();
                linkedHashSet7.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("id")));
                TableInfo tableInfo7 = new TableInfo("SystemIdInfo", linkedHashMap4, linkedHashSet7, new LinkedHashSet());
                TableInfo tableInfo8 = companion.read(connection, "SystemIdInfo");
                if (!tableInfo7.equals(tableInfo8)) {
                    return new RoomOpenDelegate.ValidationResult(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
                }
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                linkedHashMap5.put("name", new TableInfo.Column("name", "TEXT", true, 1, null, 1));
                linkedHashMap5.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
                LinkedHashSet linkedHashSet8 = new LinkedHashSet();
                linkedHashSet8.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("id")));
                LinkedHashSet linkedHashSet9 = new LinkedHashSet();
                linkedHashSet9.add(new TableInfo.Index("index_WorkName_work_spec_id", false, CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("ASC")));
                TableInfo tableInfo9 = new TableInfo("WorkName", linkedHashMap5, linkedHashSet8, linkedHashSet9);
                TableInfo tableInfo10 = companion.read(connection, "WorkName");
                if (!tableInfo9.equals(tableInfo10)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
                }
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                linkedHashMap6.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                linkedHashMap6.put("progress", new TableInfo.Column("progress", "BLOB", true, 0, null, 1));
                LinkedHashSet linkedHashSet10 = new LinkedHashSet();
                linkedHashSet10.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.listOf("work_spec_id"), CollectionsKt.listOf("id")));
                TableInfo tableInfo11 = new TableInfo("WorkProgress", linkedHashMap6, linkedHashSet10, new LinkedHashSet());
                TableInfo tableInfo12 = companion.read(connection, "WorkProgress");
                if (!tableInfo11.equals(tableInfo12)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + tableInfo11 + "\n Found:\n" + tableInfo12);
                }
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                linkedHashMap7.put("key", new TableInfo.Column("key", "TEXT", true, 1, null, 1));
                linkedHashMap7.put("long_value", new TableInfo.Column("long_value", "INTEGER", false, 0, null, 1));
                TableInfo tableInfo13 = new TableInfo("Preference", linkedHashMap7, new LinkedHashSet(), new LinkedHashSet());
                TableInfo tableInfo14 = companion.read(connection, "Preference");
                if (!tableInfo13.equals(tableInfo14)) {
                    return new RoomOpenDelegate.ValidationResult(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + tableInfo13 + "\n Found:\n" + tableInfo14);
                }
                return new RoomOpenDelegate.ValidationResult(true, null);
            }
        };
    }

    @Override // androidx.room.RoomDatabase
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(true, "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClasses() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(WorkSpecDao.class), WorkSpecDao_Impl.INSTANCE.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(DependencyDao.class), DependencyDao_Impl.INSTANCE.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(WorkTagDao.class), WorkTagDao_Impl.INSTANCE.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(SystemIdInfoDao.class), SystemIdInfoDao_Impl.INSTANCE.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(WorkNameDao.class), WorkNameDao_Impl.INSTANCE.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(WorkProgressDao.class), WorkProgressDao_Impl.INSTANCE.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(PreferenceDao.class), PreferenceDao_Impl.INSTANCE.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(RawWorkInfoDao.class), RawWorkInfoDao_Impl.INSTANCE.getRequiredConverters());
        return linkedHashMap;
    }

    @Override // androidx.room.RoomDatabase
    public Set<KClass<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecClasses() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> createAutoMigrations(Map<KClass<? extends AutoMigrationSpec>, ? extends AutoMigrationSpec> autoMigrationSpecs) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new WorkDatabase_AutoMigration_13_14_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_14_15_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_16_17_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_17_18_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_18_19_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_19_20_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_20_21_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_22_23_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_23_24_Impl());
        return arrayList;
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkSpecDao workSpecDao() {
        return this._workSpecDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public DependencyDao dependencyDao() {
        return this._dependencyDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkTagDao workTagDao() {
        return this._workTagDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public SystemIdInfoDao systemIdInfoDao() {
        return this._systemIdInfoDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkNameDao workNameDao() {
        return this._workNameDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public WorkProgressDao workProgressDao() {
        return this._workProgressDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public PreferenceDao preferenceDao() {
        return this._preferenceDao.getValue();
    }
}
