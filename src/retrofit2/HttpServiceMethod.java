package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.coroutines.Continuation;
import okhttp3.Call;
import retrofit2.Utils;

/* JADX INFO: loaded from: classes3.dex */
abstract class HttpServiceMethod extends ServiceMethod {
    private final Call.Factory callFactory;
    private final RequestFactory requestFactory;
    private final Converter responseConverter;

    protected abstract Object adapt(Call call, Object[] objArr);

    static HttpServiceMethod parseAnnotations(Retrofit retrofit, Method method, RequestFactory requestFactory) {
        Type genericReturnType;
        boolean z;
        boolean z2;
        boolean zIsUnit;
        boolean z3 = requestFactory.isKotlinSuspendFunction;
        Annotation[] annotations = method.getAnnotations();
        if (z3) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type parameterLowerBound = Utils.getParameterLowerBound(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (Utils.getRawType(parameterLowerBound) == Response.class && (parameterLowerBound instanceof ParameterizedType)) {
                parameterLowerBound = Utils.getParameterUpperBound(0, (ParameterizedType) parameterLowerBound);
                zIsUnit = false;
                z = true;
            } else {
                if (Utils.getRawType(parameterLowerBound) == Call.class) {
                    throw Utils.methodError(method, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", Utils.getParameterUpperBound(0, (ParameterizedType) parameterLowerBound));
                }
                zIsUnit = Utils.isUnit(parameterLowerBound);
                z = false;
            }
            genericReturnType = new Utils.ParameterizedTypeImpl(null, Call.class, parameterLowerBound);
            annotations = SkipCallbackExecutorImpl.ensurePresent(annotations);
            z2 = zIsUnit;
        } else {
            genericReturnType = method.getGenericReturnType();
            z = false;
            z2 = false;
        }
        CallAdapter callAdapterCreateCallAdapter = createCallAdapter(retrofit, method, genericReturnType, annotations);
        Type typeResponseType = callAdapterCreateCallAdapter.responseType();
        if (typeResponseType != okhttp3.Response.class) {
            if (typeResponseType == Response.class) {
                throw Utils.methodError(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
            }
            if (requestFactory.httpMethod.equals("HEAD") && !Void.class.equals(typeResponseType) && !Utils.isUnit(typeResponseType)) {
                throw Utils.methodError(method, "HEAD method must use Void or Unit as response type.", new Object[0]);
            }
            Converter converterCreateResponseConverter = createResponseConverter(retrofit, method, typeResponseType);
            Call.Factory factory = retrofit.callFactory;
            if (!z3) {
                return new CallAdapted(requestFactory, factory, converterCreateResponseConverter, callAdapterCreateCallAdapter);
            }
            if (z) {
                return new SuspendForResponse(requestFactory, factory, converterCreateResponseConverter, callAdapterCreateCallAdapter);
            }
            return new SuspendForBody(requestFactory, factory, converterCreateResponseConverter, callAdapterCreateCallAdapter, false, z2);
        }
        throw Utils.methodError(method, "'" + Utils.getRawType(typeResponseType).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
    }

    private static CallAdapter createCallAdapter(Retrofit retrofit, Method method, Type type, Annotation[] annotationArr) {
        try {
            return retrofit.callAdapter(type, annotationArr);
        } catch (RuntimeException e) {
            throw Utils.methodError(method, e, "Unable to create call adapter for %s", type);
        }
    }

    private static Converter createResponseConverter(Retrofit retrofit, Method method, Type type) {
        try {
            return retrofit.responseBodyConverter(type, method.getAnnotations());
        } catch (RuntimeException e) {
            throw Utils.methodError(method, e, "Unable to create converter for %s", type);
        }
    }

    HttpServiceMethod(RequestFactory requestFactory, Call.Factory factory, Converter converter) {
        this.requestFactory = requestFactory;
        this.callFactory = factory;
        this.responseConverter = converter;
    }

    @Override // retrofit2.ServiceMethod
    final Object invoke(Object obj, Object[] objArr) {
        return adapt(new OkHttpCall(this.requestFactory, obj, objArr, this.callFactory, this.responseConverter), objArr);
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class CallAdapted extends HttpServiceMethod {
        private final CallAdapter callAdapter;

        CallAdapted(RequestFactory requestFactory, Call.Factory factory, Converter converter, CallAdapter callAdapter) {
            super(requestFactory, factory, converter);
            this.callAdapter = callAdapter;
        }

        @Override // retrofit2.HttpServiceMethod
        protected Object adapt(Call call, Object[] objArr) {
            return this.callAdapter.adapt(call);
        }
    }

    static final class SuspendForResponse extends HttpServiceMethod {
        private final CallAdapter callAdapter;

        SuspendForResponse(RequestFactory requestFactory, Call.Factory factory, Converter converter, CallAdapter callAdapter) {
            super(requestFactory, factory, converter);
            this.callAdapter = callAdapter;
        }

        @Override // retrofit2.HttpServiceMethod
        protected Object adapt(Call call, Object[] objArr) {
            Call call2 = (Call) this.callAdapter.adapt(call);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                return KotlinExtensions.awaitResponse(call2, continuation);
            } catch (Exception e) {
                return KotlinExtensions.suspendAndThrow(e, continuation);
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class SuspendForBody extends HttpServiceMethod {
        private final CallAdapter callAdapter;
        private final boolean isNullable;
        private final boolean isUnit;

        SuspendForBody(RequestFactory requestFactory, Call.Factory factory, Converter converter, CallAdapter callAdapter, boolean z, boolean z2) {
            super(requestFactory, factory, converter);
            this.callAdapter = callAdapter;
            this.isNullable = z;
            this.isUnit = z2;
        }

        @Override // retrofit2.HttpServiceMethod
        protected Object adapt(Call call, Object[] objArr) {
            Call call2 = (Call) this.callAdapter.adapt(call);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                if (this.isUnit) {
                    return KotlinExtensions.awaitUnit(call2, continuation);
                }
                if (this.isNullable) {
                    return KotlinExtensions.awaitNullable(call2, continuation);
                }
                return KotlinExtensions.await(call2, continuation);
            } catch (LinkageError e) {
                throw e;
            } catch (ThreadDeath e2) {
                throw e2;
            } catch (VirtualMachineError e3) {
                throw e3;
            } catch (Throwable th) {
                return KotlinExtensions.suspendAndThrow(th, continuation);
            }
        }
    }
}
