package androidx.lifecycle;

import android.app.Application;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.JvmViewModelProviders;
import androidx.lifecycle.viewmodel.internal.ViewModelProviderImpl;
import androidx.lifecycle.viewmodel.internal.ViewModelProviders;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public class ViewModelProvider {
    public static final Companion Companion = new Companion(null);
    public static final CreationExtras.Key VIEW_MODEL_KEY;
    private final ViewModelProviderImpl impl;

    /* JADX INFO: loaded from: classes4.dex */
    public static class OnRequeryFactory {
        public abstract void onRequery(ViewModel viewModel);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStore store, Factory factory) {
        this(store, factory, null, 4, null);
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
    }

    private ViewModelProvider(ViewModelProviderImpl viewModelProviderImpl) {
        this.impl = viewModelProviderImpl;
    }

    public /* synthetic */ ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewModelStore, factory, (i & 4) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStore store, Factory factory, CreationExtras defaultCreationExtras) {
        this(new ViewModelProviderImpl(store, factory, defaultCreationExtras));
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(defaultCreationExtras, "defaultCreationExtras");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ViewModelProvider(ViewModelStoreOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        ViewModelStore viewModelStore = owner.getViewModelStore();
        ViewModelProviders viewModelProviders = ViewModelProviders.INSTANCE;
        this(viewModelStore, viewModelProviders.getDefaultFactory$lifecycle_viewmodel(owner), viewModelProviders.getDefaultCreationExtras$lifecycle_viewmodel(owner));
    }

    public final ViewModel get(KClass modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return ViewModelProviderImpl.getViewModel$lifecycle_viewmodel$default(this.impl, modelClass, null, 2, null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ViewModelProvider create$default(Companion companion, ViewModelStoreOwner viewModelStoreOwner, Factory factory, CreationExtras creationExtras, int i, Object obj) {
            if ((i & 2) != 0) {
                factory = ViewModelProviders.INSTANCE.getDefaultFactory$lifecycle_viewmodel(viewModelStoreOwner);
            }
            if ((i & 4) != 0) {
                creationExtras = ViewModelProviders.INSTANCE.getDefaultCreationExtras$lifecycle_viewmodel(viewModelStoreOwner);
            }
            return companion.create(viewModelStoreOwner, factory, creationExtras);
        }

        private Companion() {
        }

        public final ViewModelProvider create(ViewModelStoreOwner owner, Factory factory, CreationExtras extras) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return new ViewModelProvider(owner.getViewModelStore(), factory, extras);
        }
    }

    public ViewModel get(Class modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return get(JvmClassMappingKt.getKotlinClass(modelClass));
    }

    public final ViewModel get(String key, KClass modelClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return this.impl.getViewModel$lifecycle_viewmodel(modelClass, key);
    }

    public interface Factory {
        ViewModel create(Class cls);

        ViewModel create(Class cls, CreationExtras creationExtras);

        ViewModel create(KClass kClass, CreationExtras creationExtras);

        /* JADX INFO: renamed from: androidx.lifecycle.ViewModelProvider$Factory$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static ViewModel $default$create(Factory factory, Class modelClass) {
                Intrinsics.checkNotNullParameter(modelClass, "modelClass");
                return ViewModelProviders.INSTANCE.unsupportedCreateViewModel$lifecycle_viewmodel();
            }

            public static ViewModel $default$create(Factory factory, Class modelClass, CreationExtras extras) {
                Intrinsics.checkNotNullParameter(modelClass, "modelClass");
                Intrinsics.checkNotNullParameter(extras, "extras");
                return factory.create(modelClass);
            }

            public static ViewModel $default$create(Factory factory, KClass modelClass, CreationExtras extras) {
                Intrinsics.checkNotNullParameter(modelClass, "modelClass");
                Intrinsics.checkNotNullParameter(extras, "extras");
                return factory.create(JvmClassMappingKt.getJavaClass(modelClass), extras);
            }
        }
    }

    public static class NewInstanceFactory implements Factory {
        public static final Companion Companion = new Companion(null);
        public static final CreationExtras.Key VIEW_MODEL_KEY = ViewModelProvider.VIEW_MODEL_KEY;
        private static NewInstanceFactory _instance;

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class modelClass) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            return JvmViewModelProviders.INSTANCE.createViewModel(modelClass);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class modelClass, CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return create(modelClass);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(KClass modelClass, CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return create(JvmClassMappingKt.getJavaClass(modelClass), extras);
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final NewInstanceFactory getInstance() {
                if (NewInstanceFactory._instance == null) {
                    NewInstanceFactory._instance = new NewInstanceFactory();
                }
                NewInstanceFactory newInstanceFactory = NewInstanceFactory._instance;
                Intrinsics.checkNotNull(newInstanceFactory);
                return newInstanceFactory;
            }
        }
    }

    public static class AndroidViewModelFactory extends NewInstanceFactory {
        public static final CreationExtras.Key APPLICATION_KEY;
        public static final Companion Companion = new Companion(null);
        private static AndroidViewModelFactory _instance;
        private final Application application;

        private AndroidViewModelFactory(Application application, int i) {
            this.application = application;
        }

        public AndroidViewModelFactory() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AndroidViewModelFactory(Application application) {
            this(application, 0);
            Intrinsics.checkNotNullParameter(application, "application");
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class modelClass, CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            if (this.application != null) {
                return create(modelClass);
            }
            Application application = (Application) extras.get(APPLICATION_KEY);
            if (application != null) {
                return create(modelClass, application);
            }
            if (AndroidViewModel.class.isAssignableFrom(modelClass)) {
                throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
            }
            return super.create(modelClass);
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class modelClass) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Application application = this.application;
            if (application == null) {
                throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
            }
            return create(modelClass, application);
        }

        private final ViewModel create(Class cls, Application application) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    ViewModel viewModel = (ViewModel) cls.getConstructor(Application.class).newInstance(application);
                    Intrinsics.checkNotNull(viewModel);
                    return viewModel;
                } catch (IllegalAccessException e) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e4);
                }
            }
            return super.create(cls);
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final AndroidViewModelFactory getInstance(Application application) {
                Intrinsics.checkNotNullParameter(application, "application");
                if (AndroidViewModelFactory._instance == null) {
                    AndroidViewModelFactory._instance = new AndroidViewModelFactory(application);
                }
                AndroidViewModelFactory androidViewModelFactory = AndroidViewModelFactory._instance;
                Intrinsics.checkNotNull(androidViewModelFactory);
                return androidViewModelFactory;
            }
        }

        static {
            CreationExtras.Companion companion = CreationExtras.Companion;
            APPLICATION_KEY = new CreationExtras.Key() { // from class: androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1
            };
        }
    }

    static {
        CreationExtras.Companion companion = CreationExtras.Companion;
        VIEW_MODEL_KEY = new CreationExtras.Key() { // from class: androidx.lifecycle.ViewModelProvider$special$$inlined$Key$1
        };
    }
}
