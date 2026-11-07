package androidx.room;

import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.view.SavedStateHandleSupport$$ExternalSyntheticBUOutline0;
import com.sun.jna.Native$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.Request$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Utf8$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a+\u0010\u0005\u001a\u00020\u00042\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\n\u001a\u00020\u0004*\u00020\u00072\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u001b\u0010\f\u001a\u00020\u0004*\u00020\u00072\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "migrationStartAndEndVersions", "migrationsNotRequiredFrom", _UrlKt.FRAGMENT_ENCODE_SET, "validateMigrationsNotRequired", "(Ljava/util/Set;Ljava/util/Set;)V", "Landroidx/room/RoomDatabase;", "Landroidx/room/DatabaseConfiguration;", "configuration", "validateAutoMigrations", "(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)V", "validateTypeConverters", "room-runtime"}, m910k = 5, mv = {2, 1, 0}, xi = 48, xs = "androidx/room/RoomDatabaseKt")
@SourceDebugExtension({"SMAP\nRoomDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabaseKt__RoomDatabaseKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,616:1\n1#2:617\n216#3,2:618\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabaseKt__RoomDatabaseKt\n*L\n585#1:618,2\n*E\n"})
abstract /* synthetic */ class RoomDatabaseKt__RoomDatabaseKt {
    public static final void validateMigrationsNotRequired(Set<Integer> set, Set<Integer> set2) {
        if (set.isEmpty()) {
            return;
        }
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            if (set2.contains(Integer.valueOf(iIntValue))) {
                Utf8$$ExternalSyntheticBUOutline1.m976m("Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: ", iIntValue);
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0075, code lost:
    
        p002c.f$$ExternalSyntheticBUOutline1.m215m("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007a, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void validateAutoMigrations(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set<KClass<? extends AutoMigrationSpec>> requiredAutoMigrationSpecClasses = roomDatabase.getRequiredAutoMigrationSpecClasses();
        int size = databaseConfiguration.autoMigrationSpecs.size();
        boolean[] zArr = new boolean[size];
        Iterator<KClass<? extends AutoMigrationSpec>> it = requiredAutoMigrationSpecClasses.iterator();
        while (true) {
            int i = -1;
            if (it.hasNext()) {
                KClass<? extends AutoMigrationSpec> next = it.next();
                int size2 = databaseConfiguration.autoMigrationSpecs.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i2 = size2 - 1;
                        if (next.isInstance(databaseConfiguration.autoMigrationSpecs.get(size2))) {
                            zArr[size2] = true;
                            i = size2;
                            break;
                        } else if (i2 < 0) {
                            break;
                        } else {
                            size2 = i2;
                        }
                    }
                }
                if (i < 0) {
                    Request$Builder$$ExternalSyntheticBUOutline0.m952m("A required auto migration spec (", next.getQualifiedName(), ") is missing in the database configuration.");
                    return;
                }
                linkedHashMap.put(next, databaseConfiguration.autoMigrationSpecs.get(i));
            } else {
                int size3 = databaseConfiguration.autoMigrationSpecs.size() - 1;
                if (size3 >= 0) {
                    while (true) {
                        int i3 = size3 - 1;
                        if (size3 >= size || !zArr[size3]) {
                            break;
                        } else if (i3 < 0) {
                            break;
                        } else {
                            size3 = i3;
                        }
                    }
                }
                for (Migration migration : roomDatabase.createAutoMigrations(linkedHashMap)) {
                    if (!databaseConfiguration.migrationContainer.contains(migration.startVersion, migration.endVersion)) {
                        databaseConfiguration.migrationContainer.addMigration(migration);
                    }
                }
                return;
            }
        }
    }

    public static final void validateTypeConverters(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        Map<KClass<?>, List<KClass<?>>> requiredTypeConverterClassesMap$room_runtime = roomDatabase.getRequiredTypeConverterClassesMap$room_runtime();
        boolean[] zArr = new boolean[databaseConfiguration.typeConverters.size()];
        for (Map.Entry<KClass<?>, List<KClass<?>>> entry : requiredTypeConverterClassesMap$room_runtime.entrySet()) {
            KClass<?> key = entry.getKey();
            for (KClass<?> kClass : entry.getValue()) {
                int size = databaseConfiguration.typeConverters.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i = size - 1;
                        if (kClass.isInstance(databaseConfiguration.typeConverters.get(size))) {
                            zArr[size] = true;
                            break;
                        } else if (i < 0) {
                            break;
                        } else {
                            size = i;
                        }
                    }
                    size = -1;
                } else {
                    size = -1;
                }
                if (size < 0) {
                    SavedStateHandleSupport$$ExternalSyntheticBUOutline0.m154m("A required type converter (", kClass.getQualifiedName(), ") for ", key.getQualifiedName(), " is missing in the database configuration.");
                    return;
                }
                roomDatabase.addTypeConverter$room_runtime(kClass, databaseConfiguration.typeConverters.get(size));
            }
        }
        int size2 = databaseConfiguration.typeConverters.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i2 = size2 - 1;
            if (!zArr[size2]) {
                Native$$ExternalSyntheticBUOutline0.m512m("Unexpected type converter ", databaseConfiguration.typeConverters.get(size2), ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                return;
            } else if (i2 < 0) {
                return;
            } else {
                size2 = i2;
            }
        }
    }
}
