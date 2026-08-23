package com.google.firebase.sessions;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.datastore.DataStoreFile;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.MultiProcessDataStoreFactory;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.google.firebase.FirebaseApp;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.settings.SessionConfigs;
import com.google.firebase.sessions.settings.SessionConfigsSerializer;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
public interface FirebaseSessionsComponent {

    public interface Builder {
        Builder appContext(Context context);

        Builder backgroundDispatcher(CoroutineContext coroutineContext);

        Builder blockingDispatcher(CoroutineContext coroutineContext);

        FirebaseSessionsComponent build();

        Builder firebaseApp(FirebaseApp firebaseApp);

        Builder firebaseInstallationsApi(FirebaseInstallationsApi firebaseInstallationsApi);

        Builder transportFactoryProvider(Provider provider);
    }

    FirebaseSessions getFirebaseSessions();

    SharedSessionRepository getSharedSessionRepository();

    public interface MainModule {
        public static final Companion Companion = Companion.$$INSTANCE;

        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final TimeProvider timeProvider() {
                return TimeProviderImpl.INSTANCE;
            }

            public final UuidGenerator uuidGenerator() {
                return UuidGeneratorImpl.INSTANCE;
            }

            public final ApplicationInfo applicationInfo(FirebaseApp firebaseApp) {
                Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
                return SessionEvents.INSTANCE.getApplicationInfo(firebaseApp);
            }

            public final DataStore sessionConfigsDataStore(final Context appContext, CoroutineContext blockingDispatcher) {
                Intrinsics.checkNotNullParameter(appContext, "appContext");
                Intrinsics.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
                return createDataStore$default(this, SessionConfigsSerializer.INSTANCE, new ReplaceFileCorruptionHandler(new Function1() { // from class: com.google.firebase.sessions.FirebaseSessionsComponent$MainModule$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$0((CorruptionException) obj);
                    }
                }), null, CoroutineScopeKt.CoroutineScope(blockingDispatcher), new Function0() { // from class: com.google.firebase.sessions.FirebaseSessionsComponent$MainModule$Companion$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$2(appContext);
                    }
                }, 4, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final SessionConfigs sessionConfigsDataStore$lambda$0(CorruptionException ex) {
                Intrinsics.checkNotNullParameter(ex, "ex");
                Log.w("FirebaseSessions", "CorruptionException in session configs DataStore", ex);
                return SessionConfigsSerializer.INSTANCE.getDefaultValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File sessionConfigsDataStore$lambda$2(Context context) throws IOException {
                File fileDataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionConfigsDataStore.data");
                $$INSTANCE.prepDataStoreFile(fileDataStoreFile);
                return fileDataStoreFile;
            }

            public final DataStore sessionDataStore(final Context appContext, CoroutineContext blockingDispatcher, final SessionDataSerializer sessionDataSerializer) {
                Intrinsics.checkNotNullParameter(appContext, "appContext");
                Intrinsics.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
                Intrinsics.checkNotNullParameter(sessionDataSerializer, "sessionDataSerializer");
                return createDataStore$default(this, sessionDataSerializer, new ReplaceFileCorruptionHandler(new Function1() { // from class: com.google.firebase.sessions.FirebaseSessionsComponent$MainModule$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$3(sessionDataSerializer, (CorruptionException) obj);
                    }
                }), null, CoroutineScopeKt.CoroutineScope(blockingDispatcher), new Function0() { // from class: com.google.firebase.sessions.FirebaseSessionsComponent$MainModule$Companion$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$5(appContext);
                    }
                }, 4, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final SessionData sessionDataStore$lambda$3(SessionDataSerializer sessionDataSerializer, CorruptionException ex) {
                Intrinsics.checkNotNullParameter(ex, "ex");
                Log.w("FirebaseSessions", "CorruptionException in session data DataStore", ex);
                return sessionDataSerializer.getDefaultValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File sessionDataStore$lambda$5(Context context) throws IOException {
                File fileDataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionDataStore.data");
                $$INSTANCE.prepDataStoreFile(fileDataStoreFile);
                return fileDataStoreFile;
            }

            static /* synthetic */ DataStore createDataStore$default(Companion companion, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, CoroutineScope coroutineScope, Function0 function0, int i, Object obj) {
                if ((i & 4) != 0) {
                    list = CollectionsKt.emptyList();
                }
                return companion.createDataStore(serializer, replaceFileCorruptionHandler, list, coroutineScope, function0);
            }

            private final DataStore createDataStore(Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, CoroutineScope coroutineScope, Function0 function0) {
                if (loadDataStoreSharedCounter()) {
                    return MultiProcessDataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, coroutineScope, function0);
                }
                return DataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, coroutineScope, function0);
            }

            private final boolean loadDataStoreSharedCounter() {
                try {
                    System.loadLibrary("datastore_shared_counter");
                    return true;
                } catch (SecurityException | UnsatisfiedLinkError unused) {
                    return false;
                }
            }

            private final void prepDataStoreFile(File file) throws IOException {
                File parentFile = file.getParentFile();
                if (parentFile == null) {
                    return;
                }
                if (parentFile.exists() && !parentFile.isDirectory() && Intrinsics.areEqual(parentFile.getName(), "firebaseSessions") && !parentFile.delete()) {
                    throw new IOException("Failed to delete conflicting file: " + parentFile);
                }
                if (parentFile.isDirectory()) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    try {
                        Files.createDirectories(parentFile.toPath(), new FileAttribute[0]);
                        return;
                    } catch (Exception e) {
                        throw new IOException("Failed to create directory: " + parentFile, e);
                    }
                }
                if (parentFile.mkdirs() || parentFile.isDirectory()) {
                    return;
                }
                throw new IOException("Failed to create directory: " + parentFile);
            }
        }
    }
}
