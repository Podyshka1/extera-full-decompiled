package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;
import retrofit2.BuiltInConverters;
import retrofit2.CallAdapter;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes3.dex */
public final class Retrofit {
    final HttpUrl baseUrl;
    final List callAdapterFactories;
    final Call.Factory callFactory;
    final Executor callbackExecutor;
    final List converterFactories;
    final int defaultCallAdapterFactoriesSize;
    final int defaultConverterFactoriesSize;
    private final ConcurrentHashMap serviceMethodCache = new ConcurrentHashMap();
    final boolean validateEagerly;

    Retrofit(Call.Factory factory, HttpUrl httpUrl, List list, int i, List list2, int i2, Executor executor, boolean z) {
        this.callFactory = factory;
        this.baseUrl = httpUrl;
        this.converterFactories = list;
        this.defaultConverterFactoriesSize = i;
        this.callAdapterFactories = list2;
        this.defaultCallAdapterFactoriesSize = i2;
        this.callbackExecutor = executor;
        this.validateEagerly = z;
    }

    public Object create(final Class cls) {
        validateServiceInterface(cls);
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.Retrofit.1
            private final Object[] emptyArgs = new Object[0];

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (objArr == null) {
                    objArr = this.emptyArgs;
                }
                Reflection reflection = Platform.reflection;
                if (reflection.isDefaultMethod(method)) {
                    return reflection.invokeDefaultMethod(method, cls, obj, objArr);
                }
                return Retrofit.this.loadServiceMethod(cls, method).invoke(obj, objArr);
            }
        });
    }

    private void validateServiceInterface(Class cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                sb.append(cls2.getName());
                if (cls2 != cls) {
                    sb.append(" which is an interface of ");
                    sb.append(cls.getName());
                }
                throw new IllegalArgumentException(sb.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        if (this.validateEagerly) {
            Reflection reflection = Platform.reflection;
            for (Method method : cls.getDeclaredMethods()) {
                if (!reflection.isDefaultMethod(method) && !Modifier.isStatic(method.getModifiers()) && !method.isSynthetic()) {
                    loadServiceMethod(cls, method);
                }
            }
        }
    }

    ServiceMethod loadServiceMethod(Class cls, Method method) {
        while (true) {
            Object objPutIfAbsent = this.serviceMethodCache.get(method);
            if (objPutIfAbsent instanceof ServiceMethod) {
                return (ServiceMethod) objPutIfAbsent;
            }
            if (objPutIfAbsent == null) {
                Object obj = new Object();
                synchronized (obj) {
                    try {
                        objPutIfAbsent = this.serviceMethodCache.putIfAbsent(method, obj);
                        if (objPutIfAbsent == null) {
                            try {
                                ServiceMethod annotations = ServiceMethod.parseAnnotations(this, cls, method);
                                this.serviceMethodCache.put(method, annotations);
                                return annotations;
                            } catch (Throwable th) {
                                this.serviceMethodCache.remove(method);
                                throw th;
                            }
                        }
                    } finally {
                    }
                }
            }
            synchronized (objPutIfAbsent) {
                try {
                    Object obj2 = this.serviceMethodCache.get(method);
                    if (obj2 != null) {
                        return (ServiceMethod) obj2;
                    }
                } finally {
                }
            }
        }
    }

    public CallAdapter callAdapter(Type type, Annotation[] annotationArr) {
        return nextCallAdapter(null, type, annotationArr);
    }

    public CallAdapter nextCallAdapter(CallAdapter.Factory factory, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.callAdapterFactories.indexOf(factory) + 1;
        int size = this.callAdapterFactories.size();
        for (int i = iIndexOf; i < size; i++) {
            CallAdapter callAdapter = ((CallAdapter.Factory) this.callAdapterFactories.get(i)).get(type, annotationArr, this);
            if (callAdapter != null) {
                return callAdapter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(((CallAdapter.Factory) this.callAdapterFactories.get(i2)).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.callAdapterFactories.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((CallAdapter.Factory) this.callAdapterFactories.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return nextRequestBodyConverter(null, type, annotationArr, annotationArr2);
    }

    public Converter nextRequestBodyConverter(Converter.Factory factory, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.converterFactories.indexOf(factory) + 1;
        int size = this.converterFactories.size();
        for (int i = iIndexOf; i < size; i++) {
            Converter converterRequestBodyConverter = ((Converter.Factory) this.converterFactories.get(i)).requestBodyConverter(type, annotationArr, annotationArr2, this);
            if (converterRequestBodyConverter != null) {
                return converterRequestBodyConverter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(((Converter.Factory) this.converterFactories.get(i2)).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.converterFactories.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((Converter.Factory) this.converterFactories.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Converter responseBodyConverter(Type type, Annotation[] annotationArr) {
        return nextResponseBodyConverter(null, type, annotationArr);
    }

    public Converter nextResponseBodyConverter(Converter.Factory factory, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.converterFactories.indexOf(factory) + 1;
        int size = this.converterFactories.size();
        for (int i = iIndexOf; i < size; i++) {
            Converter converterResponseBodyConverter = ((Converter.Factory) this.converterFactories.get(i)).responseBodyConverter(type, annotationArr, this);
            if (converterResponseBodyConverter != null) {
                return converterResponseBodyConverter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(((Converter.Factory) this.converterFactories.get(i2)).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.converterFactories.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((Converter.Factory) this.converterFactories.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Converter stringConverter(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.converterFactories.size();
        for (int i = 0; i < size; i++) {
            Converter converterStringConverter = ((Converter.Factory) this.converterFactories.get(i)).stringConverter(type, annotationArr, this);
            if (converterStringConverter != null) {
                return converterStringConverter;
            }
        }
        return BuiltInConverters.ToStringConverter.INSTANCE;
    }

    public static final class Builder {
        private HttpUrl baseUrl;
        private Call.Factory callFactory;
        private Executor callbackExecutor;
        private boolean validateEagerly;
        private final List converterFactories = new ArrayList();
        private final List callAdapterFactories = new ArrayList();

        public Builder client(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return callFactory(okHttpClient);
        }

        public Builder callFactory(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.callFactory = factory;
            return this;
        }

        public Builder baseUrl(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            return baseUrl(HttpUrl.get(str));
        }

        public Builder baseUrl(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "baseUrl == null");
            if (!_UrlKt.FRAGMENT_ENCODE_SET.equals(httpUrl.pathSegments().get(r0.size() - 1))) {
                throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
            }
            this.baseUrl = httpUrl;
            return this;
        }

        public Builder addConverterFactory(Converter.Factory factory) {
            List list = this.converterFactories;
            Objects.requireNonNull(factory, "factory == null");
            list.add(factory);
            return this;
        }

        public Retrofit build() {
            if (this.baseUrl == null) {
                throw new IllegalStateException("Base URL required.");
            }
            Call.Factory okHttpClient = this.callFactory;
            if (okHttpClient == null) {
                okHttpClient = new OkHttpClient();
            }
            Call.Factory factory = okHttpClient;
            Executor executor = this.callbackExecutor;
            if (executor == null) {
                executor = Platform.callbackExecutor;
            }
            Executor executor2 = executor;
            BuiltInFactories builtInFactories = Platform.builtInFactories;
            ArrayList arrayList = new ArrayList(this.callAdapterFactories);
            List listCreateDefaultCallAdapterFactories = builtInFactories.createDefaultCallAdapterFactories(executor2);
            arrayList.addAll(listCreateDefaultCallAdapterFactories);
            List listCreateDefaultConverterFactories = builtInFactories.createDefaultConverterFactories();
            int size = listCreateDefaultConverterFactories.size();
            ArrayList arrayList2 = new ArrayList(this.converterFactories.size() + 1 + size);
            arrayList2.add(new BuiltInConverters());
            arrayList2.addAll(this.converterFactories);
            arrayList2.addAll(listCreateDefaultConverterFactories);
            return new Retrofit(factory, this.baseUrl, DesugarCollections.unmodifiableList(arrayList2), size, DesugarCollections.unmodifiableList(arrayList), listCreateDefaultCallAdapterFactories.size(), executor2, this.validateEagerly);
        }
    }
}
