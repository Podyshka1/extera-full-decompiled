package com.google.android.datatransport.cct.internal;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;

/* JADX INFO: loaded from: classes.dex */
public final class AutoBatchedLogRequestEncoder implements Configurator {
    public static final Configurator CONFIG = new AutoBatchedLogRequestEncoder();

    private AutoBatchedLogRequestEncoder() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig encoderConfig) {
        BatchedLogRequestEncoder batchedLogRequestEncoder = BatchedLogRequestEncoder.INSTANCE;
        encoderConfig.registerEncoder(BatchedLogRequest.class, batchedLogRequestEncoder);
        encoderConfig.registerEncoder(AutoValue_BatchedLogRequest.class, batchedLogRequestEncoder);
        LogRequestEncoder logRequestEncoder = LogRequestEncoder.INSTANCE;
        encoderConfig.registerEncoder(LogRequest.class, logRequestEncoder);
        encoderConfig.registerEncoder(AutoValue_LogRequest.class, logRequestEncoder);
        ClientInfoEncoder clientInfoEncoder = ClientInfoEncoder.INSTANCE;
        encoderConfig.registerEncoder(ClientInfo.class, clientInfoEncoder);
        encoderConfig.registerEncoder(AutoValue_ClientInfo.class, clientInfoEncoder);
        AndroidClientInfoEncoder androidClientInfoEncoder = AndroidClientInfoEncoder.INSTANCE;
        encoderConfig.registerEncoder(AndroidClientInfo.class, androidClientInfoEncoder);
        encoderConfig.registerEncoder(AutoValue_AndroidClientInfo.class, androidClientInfoEncoder);
        LogEventEncoder logEventEncoder = LogEventEncoder.INSTANCE;
        encoderConfig.registerEncoder(LogEvent.class, logEventEncoder);
        encoderConfig.registerEncoder(AutoValue_LogEvent.class, logEventEncoder);
        ComplianceDataEncoder complianceDataEncoder = ComplianceDataEncoder.INSTANCE;
        encoderConfig.registerEncoder(ComplianceData.class, complianceDataEncoder);
        encoderConfig.registerEncoder(AutoValue_ComplianceData.class, complianceDataEncoder);
        ExternalPrivacyContextEncoder externalPrivacyContextEncoder = ExternalPrivacyContextEncoder.INSTANCE;
        encoderConfig.registerEncoder(ExternalPrivacyContext.class, externalPrivacyContextEncoder);
        encoderConfig.registerEncoder(AutoValue_ExternalPrivacyContext.class, externalPrivacyContextEncoder);
        ExternalPRequestContextEncoder externalPRequestContextEncoder = ExternalPRequestContextEncoder.INSTANCE;
        encoderConfig.registerEncoder(ExternalPRequestContext.class, externalPRequestContextEncoder);
        encoderConfig.registerEncoder(AutoValue_ExternalPRequestContext.class, externalPRequestContextEncoder);
        NetworkConnectionInfoEncoder networkConnectionInfoEncoder = NetworkConnectionInfoEncoder.INSTANCE;
        encoderConfig.registerEncoder(NetworkConnectionInfo.class, networkConnectionInfoEncoder);
        encoderConfig.registerEncoder(AutoValue_NetworkConnectionInfo.class, networkConnectionInfoEncoder);
        ExperimentIdsEncoder experimentIdsEncoder = ExperimentIdsEncoder.INSTANCE;
        encoderConfig.registerEncoder(ExperimentIds.class, experimentIdsEncoder);
        encoderConfig.registerEncoder(AutoValue_ExperimentIds.class, experimentIdsEncoder);
    }

    private static final class BatchedLogRequestEncoder implements ObjectEncoder {
        static final BatchedLogRequestEncoder INSTANCE = new BatchedLogRequestEncoder();
        private static final FieldDescriptor LOGREQUEST_DESCRIPTOR = FieldDescriptor.m511of("logRequest");

        private BatchedLogRequestEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(BatchedLogRequest batchedLogRequest, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(LOGREQUEST_DESCRIPTOR, batchedLogRequest.getLogRequests());
        }
    }

    private static final class LogRequestEncoder implements ObjectEncoder {
        static final LogRequestEncoder INSTANCE = new LogRequestEncoder();
        private static final FieldDescriptor REQUESTTIMEMS_DESCRIPTOR = FieldDescriptor.m511of("requestTimeMs");
        private static final FieldDescriptor REQUESTUPTIMEMS_DESCRIPTOR = FieldDescriptor.m511of("requestUptimeMs");
        private static final FieldDescriptor CLIENTINFO_DESCRIPTOR = FieldDescriptor.m511of("clientInfo");
        private static final FieldDescriptor LOGSOURCE_DESCRIPTOR = FieldDescriptor.m511of("logSource");
        private static final FieldDescriptor LOGSOURCENAME_DESCRIPTOR = FieldDescriptor.m511of("logSourceName");
        private static final FieldDescriptor LOGEVENT_DESCRIPTOR = FieldDescriptor.m511of("logEvent");
        private static final FieldDescriptor QOSTIER_DESCRIPTOR = FieldDescriptor.m511of("qosTier");

        private LogRequestEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(LogRequest logRequest, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(REQUESTTIMEMS_DESCRIPTOR, logRequest.getRequestTimeMs());
            objectEncoderContext.add(REQUESTUPTIMEMS_DESCRIPTOR, logRequest.getRequestUptimeMs());
            objectEncoderContext.add(CLIENTINFO_DESCRIPTOR, logRequest.getClientInfo());
            objectEncoderContext.add(LOGSOURCE_DESCRIPTOR, logRequest.getLogSource());
            objectEncoderContext.add(LOGSOURCENAME_DESCRIPTOR, logRequest.getLogSourceName());
            objectEncoderContext.add(LOGEVENT_DESCRIPTOR, logRequest.getLogEvents());
            objectEncoderContext.add(QOSTIER_DESCRIPTOR, logRequest.getQosTier());
        }
    }

    private static final class ClientInfoEncoder implements ObjectEncoder {
        static final ClientInfoEncoder INSTANCE = new ClientInfoEncoder();
        private static final FieldDescriptor CLIENTTYPE_DESCRIPTOR = FieldDescriptor.m511of("clientType");
        private static final FieldDescriptor ANDROIDCLIENTINFO_DESCRIPTOR = FieldDescriptor.m511of("androidClientInfo");

        private ClientInfoEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(ClientInfo clientInfo, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(CLIENTTYPE_DESCRIPTOR, clientInfo.getClientType());
            objectEncoderContext.add(ANDROIDCLIENTINFO_DESCRIPTOR, clientInfo.getAndroidClientInfo());
        }
    }

    private static final class AndroidClientInfoEncoder implements ObjectEncoder {
        static final AndroidClientInfoEncoder INSTANCE = new AndroidClientInfoEncoder();
        private static final FieldDescriptor SDKVERSION_DESCRIPTOR = FieldDescriptor.m511of("sdkVersion");
        private static final FieldDescriptor MODEL_DESCRIPTOR = FieldDescriptor.m511of("model");
        private static final FieldDescriptor HARDWARE_DESCRIPTOR = FieldDescriptor.m511of("hardware");
        private static final FieldDescriptor DEVICE_DESCRIPTOR = FieldDescriptor.m511of("device");
        private static final FieldDescriptor PRODUCT_DESCRIPTOR = FieldDescriptor.m511of("product");
        private static final FieldDescriptor OSBUILD_DESCRIPTOR = FieldDescriptor.m511of("osBuild");
        private static final FieldDescriptor MANUFACTURER_DESCRIPTOR = FieldDescriptor.m511of("manufacturer");
        private static final FieldDescriptor FINGERPRINT_DESCRIPTOR = FieldDescriptor.m511of("fingerprint");
        private static final FieldDescriptor LOCALE_DESCRIPTOR = FieldDescriptor.m511of("locale");
        private static final FieldDescriptor COUNTRY_DESCRIPTOR = FieldDescriptor.m511of("country");
        private static final FieldDescriptor MCCMNC_DESCRIPTOR = FieldDescriptor.m511of("mccMnc");
        private static final FieldDescriptor APPLICATIONBUILD_DESCRIPTOR = FieldDescriptor.m511of("applicationBuild");

        private AndroidClientInfoEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(AndroidClientInfo androidClientInfo, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(SDKVERSION_DESCRIPTOR, androidClientInfo.getSdkVersion());
            objectEncoderContext.add(MODEL_DESCRIPTOR, androidClientInfo.getModel());
            objectEncoderContext.add(HARDWARE_DESCRIPTOR, androidClientInfo.getHardware());
            objectEncoderContext.add(DEVICE_DESCRIPTOR, androidClientInfo.getDevice());
            objectEncoderContext.add(PRODUCT_DESCRIPTOR, androidClientInfo.getProduct());
            objectEncoderContext.add(OSBUILD_DESCRIPTOR, androidClientInfo.getOsBuild());
            objectEncoderContext.add(MANUFACTURER_DESCRIPTOR, androidClientInfo.getManufacturer());
            objectEncoderContext.add(FINGERPRINT_DESCRIPTOR, androidClientInfo.getFingerprint());
            objectEncoderContext.add(LOCALE_DESCRIPTOR, androidClientInfo.getLocale());
            objectEncoderContext.add(COUNTRY_DESCRIPTOR, androidClientInfo.getCountry());
            objectEncoderContext.add(MCCMNC_DESCRIPTOR, androidClientInfo.getMccMnc());
            objectEncoderContext.add(APPLICATIONBUILD_DESCRIPTOR, androidClientInfo.getApplicationBuild());
        }
    }

    private static final class LogEventEncoder implements ObjectEncoder {
        static final LogEventEncoder INSTANCE = new LogEventEncoder();
        private static final FieldDescriptor EVENTTIMEMS_DESCRIPTOR = FieldDescriptor.m511of("eventTimeMs");
        private static final FieldDescriptor EVENTCODE_DESCRIPTOR = FieldDescriptor.m511of("eventCode");
        private static final FieldDescriptor COMPLIANCEDATA_DESCRIPTOR = FieldDescriptor.m511of("complianceData");
        private static final FieldDescriptor EVENTUPTIMEMS_DESCRIPTOR = FieldDescriptor.m511of("eventUptimeMs");
        private static final FieldDescriptor SOURCEEXTENSION_DESCRIPTOR = FieldDescriptor.m511of("sourceExtension");
        private static final FieldDescriptor SOURCEEXTENSIONJSONPROTO3_DESCRIPTOR = FieldDescriptor.m511of("sourceExtensionJsonProto3");
        private static final FieldDescriptor TIMEZONEOFFSETSECONDS_DESCRIPTOR = FieldDescriptor.m511of("timezoneOffsetSeconds");
        private static final FieldDescriptor NETWORKCONNECTIONINFO_DESCRIPTOR = FieldDescriptor.m511of("networkConnectionInfo");
        private static final FieldDescriptor EXPERIMENTIDS_DESCRIPTOR = FieldDescriptor.m511of("experimentIds");

        private LogEventEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(LogEvent logEvent, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(EVENTTIMEMS_DESCRIPTOR, logEvent.getEventTimeMs());
            objectEncoderContext.add(EVENTCODE_DESCRIPTOR, logEvent.getEventCode());
            objectEncoderContext.add(COMPLIANCEDATA_DESCRIPTOR, logEvent.getComplianceData());
            objectEncoderContext.add(EVENTUPTIMEMS_DESCRIPTOR, logEvent.getEventUptimeMs());
            objectEncoderContext.add(SOURCEEXTENSION_DESCRIPTOR, logEvent.getSourceExtension());
            objectEncoderContext.add(SOURCEEXTENSIONJSONPROTO3_DESCRIPTOR, logEvent.getSourceExtensionJsonProto3());
            objectEncoderContext.add(TIMEZONEOFFSETSECONDS_DESCRIPTOR, logEvent.getTimezoneOffsetSeconds());
            objectEncoderContext.add(NETWORKCONNECTIONINFO_DESCRIPTOR, logEvent.getNetworkConnectionInfo());
            objectEncoderContext.add(EXPERIMENTIDS_DESCRIPTOR, logEvent.getExperimentIds());
        }
    }

    private static final class ComplianceDataEncoder implements ObjectEncoder {
        static final ComplianceDataEncoder INSTANCE = new ComplianceDataEncoder();
        private static final FieldDescriptor PRIVACYCONTEXT_DESCRIPTOR = FieldDescriptor.m511of("privacyContext");
        private static final FieldDescriptor PRODUCTIDORIGIN_DESCRIPTOR = FieldDescriptor.m511of("productIdOrigin");

        private ComplianceDataEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(ComplianceData complianceData, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(PRIVACYCONTEXT_DESCRIPTOR, complianceData.getPrivacyContext());
            objectEncoderContext.add(PRODUCTIDORIGIN_DESCRIPTOR, complianceData.getProductIdOrigin());
        }
    }

    private static final class ExternalPrivacyContextEncoder implements ObjectEncoder {
        static final ExternalPrivacyContextEncoder INSTANCE = new ExternalPrivacyContextEncoder();
        private static final FieldDescriptor PREQUEST_DESCRIPTOR = FieldDescriptor.m511of("prequest");

        private ExternalPrivacyContextEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(ExternalPrivacyContext externalPrivacyContext, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(PREQUEST_DESCRIPTOR, externalPrivacyContext.getPrequest());
        }
    }

    private static final class ExternalPRequestContextEncoder implements ObjectEncoder {
        static final ExternalPRequestContextEncoder INSTANCE = new ExternalPRequestContextEncoder();
        private static final FieldDescriptor ORIGINASSOCIATEDPRODUCTID_DESCRIPTOR = FieldDescriptor.m511of("originAssociatedProductId");

        private ExternalPRequestContextEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(ExternalPRequestContext externalPRequestContext, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(ORIGINASSOCIATEDPRODUCTID_DESCRIPTOR, externalPRequestContext.getOriginAssociatedProductId());
        }
    }

    private static final class NetworkConnectionInfoEncoder implements ObjectEncoder {
        static final NetworkConnectionInfoEncoder INSTANCE = new NetworkConnectionInfoEncoder();
        private static final FieldDescriptor NETWORKTYPE_DESCRIPTOR = FieldDescriptor.m511of("networkType");
        private static final FieldDescriptor MOBILESUBTYPE_DESCRIPTOR = FieldDescriptor.m511of("mobileSubtype");

        private NetworkConnectionInfoEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(NetworkConnectionInfo networkConnectionInfo, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(NETWORKTYPE_DESCRIPTOR, networkConnectionInfo.getNetworkType());
            objectEncoderContext.add(MOBILESUBTYPE_DESCRIPTOR, networkConnectionInfo.getMobileSubtype());
        }
    }

    private static final class ExperimentIdsEncoder implements ObjectEncoder {
        static final ExperimentIdsEncoder INSTANCE = new ExperimentIdsEncoder();
        private static final FieldDescriptor CLEARBLOB_DESCRIPTOR = FieldDescriptor.m511of("clearBlob");
        private static final FieldDescriptor ENCRYPTEDBLOB_DESCRIPTOR = FieldDescriptor.m511of("encryptedBlob");

        private ExperimentIdsEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(ExperimentIds experimentIds, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(CLEARBLOB_DESCRIPTOR, experimentIds.getClearBlob());
            objectEncoderContext.add(ENCRYPTEDBLOB_DESCRIPTOR, experimentIds.getEncryptedBlob());
        }
    }
}
