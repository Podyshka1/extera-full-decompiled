package androidx.credentials.exceptions.publickeycredential;

import androidx.credentials.exceptions.GetCredentialCustomException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.domerrors.AbortError;
import androidx.credentials.exceptions.domerrors.ConstraintError;
import androidx.credentials.exceptions.domerrors.DataCloneError;
import androidx.credentials.exceptions.domerrors.DataError;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.HierarchyRequestError;
import androidx.credentials.exceptions.domerrors.InUseAttributeError;
import androidx.credentials.exceptions.domerrors.InvalidCharacterError;
import androidx.credentials.exceptions.domerrors.InvalidModificationError;
import androidx.credentials.exceptions.domerrors.InvalidNodeTypeError;
import androidx.credentials.exceptions.domerrors.InvalidStateError;
import androidx.credentials.exceptions.domerrors.NamespaceError;
import androidx.credentials.exceptions.domerrors.NetworkError;
import androidx.credentials.exceptions.domerrors.NoModificationAllowedError;
import androidx.credentials.exceptions.domerrors.NotAllowedError;
import androidx.credentials.exceptions.domerrors.NotFoundError;
import androidx.credentials.exceptions.domerrors.NotReadableError;
import androidx.credentials.exceptions.domerrors.NotSupportedError;
import androidx.credentials.exceptions.domerrors.OperationError;
import androidx.credentials.exceptions.domerrors.OptOutError;
import androidx.credentials.exceptions.domerrors.QuotaExceededError;
import androidx.credentials.exceptions.domerrors.ReadOnlyError;
import androidx.credentials.exceptions.domerrors.SecurityError;
import androidx.credentials.exceptions.domerrors.SyntaxError;
import androidx.credentials.exceptions.domerrors.TimeoutError;
import androidx.credentials.exceptions.domerrors.TransactionInactiveError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.domerrors.VersionError;
import androidx.credentials.exceptions.domerrors.WrongDocumentError;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class GetPublicKeyCredentialDomException extends GetPublicKeyCredentialException {
    public static final Companion Companion = new Companion(null);
    private final DomError domError;

    public /* synthetic */ GetPublicKeyCredentialDomException(DomError domError, CharSequence charSequence, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(domError, (i & 2) != 0 ? null : charSequence);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetPublicKeyCredentialDomException(DomError domError, CharSequence charSequence) {
        super("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + domError.getType(), charSequence);
        Intrinsics.checkNotNullParameter(domError, "domError");
        this.domError = domError;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final GetCredentialException createFrom(String type, String str) {
            Object objGenerateException;
            Intrinsics.checkNotNullParameter(type, "type");
            try {
                DomExceptionUtils.Companion companion = DomExceptionUtils.Companion;
                GetPublicKeyCredentialDomException getPublicKeyCredentialDomException = new GetPublicKeyCredentialDomException(new UnknownError(), null, 2, 0 == true ? 1 : 0);
                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ABORT_ERROR")) {
                    objGenerateException = companion.generateException(new AbortError(), str, getPublicKeyCredentialDomException);
                } else {
                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_CONSTRAINT_ERROR")) {
                        objGenerateException = companion.generateException(new ConstraintError(), str, getPublicKeyCredentialDomException);
                    } else {
                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_CLONE_ERROR")) {
                            objGenerateException = companion.generateException(new DataCloneError(), str, getPublicKeyCredentialDomException);
                        } else {
                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_ERROR")) {
                                objGenerateException = companion.generateException(new DataError(), str, getPublicKeyCredentialDomException);
                            } else {
                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ENCODING_ERROR")) {
                                    objGenerateException = companion.generateException(new EncodingError(), str, getPublicKeyCredentialDomException);
                                } else {
                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_HIERARCHY_REQUEST_ERROR")) {
                                        objGenerateException = companion.generateException(new HierarchyRequestError(), str, getPublicKeyCredentialDomException);
                                    } else {
                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_IN_USE_ATTRIBUTE_ERROR")) {
                                            objGenerateException = companion.generateException(new InUseAttributeError(), str, getPublicKeyCredentialDomException);
                                        } else {
                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_CHARACTER_ERROR")) {
                                                objGenerateException = companion.generateException(new InvalidCharacterError(), str, getPublicKeyCredentialDomException);
                                            } else {
                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_MODIFICATION_ERROR")) {
                                                    objGenerateException = companion.generateException(new InvalidModificationError(), str, getPublicKeyCredentialDomException);
                                                } else {
                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_NODE_TYPE_ERROR")) {
                                                        objGenerateException = companion.generateException(new InvalidNodeTypeError(), str, getPublicKeyCredentialDomException);
                                                    } else {
                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_STATE_ERROR")) {
                                                            objGenerateException = companion.generateException(new InvalidStateError(), str, getPublicKeyCredentialDomException);
                                                        } else {
                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NAMESPACE_ERROR")) {
                                                                objGenerateException = companion.generateException(new NamespaceError(), str, getPublicKeyCredentialDomException);
                                                            } else {
                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NETWORK_ERROR")) {
                                                                    objGenerateException = companion.generateException(new NetworkError(), str, getPublicKeyCredentialDomException);
                                                                } else {
                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NO_MODIFICATION_ALLOWED_ERROR")) {
                                                                        objGenerateException = companion.generateException(new NoModificationAllowedError(), str, getPublicKeyCredentialDomException);
                                                                    } else {
                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_ALLOWED_ERROR")) {
                                                                            objGenerateException = companion.generateException(new NotAllowedError(), str, getPublicKeyCredentialDomException);
                                                                        } else {
                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_FOUND_ERROR")) {
                                                                                objGenerateException = companion.generateException(new NotFoundError(), str, getPublicKeyCredentialDomException);
                                                                            } else {
                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_READABLE_ERROR")) {
                                                                                    objGenerateException = companion.generateException(new NotReadableError(), str, getPublicKeyCredentialDomException);
                                                                                } else {
                                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_SUPPORTED_ERROR")) {
                                                                                        objGenerateException = companion.generateException(new NotSupportedError(), str, getPublicKeyCredentialDomException);
                                                                                    } else {
                                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPERATION_ERROR")) {
                                                                                            objGenerateException = companion.generateException(new OperationError(), str, getPublicKeyCredentialDomException);
                                                                                        } else {
                                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPT_OUT_ERROR")) {
                                                                                                objGenerateException = companion.generateException(new OptOutError(), str, getPublicKeyCredentialDomException);
                                                                                            } else {
                                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_QUOTA_EXCEEDED_ERROR")) {
                                                                                                    objGenerateException = companion.generateException(new QuotaExceededError(), str, getPublicKeyCredentialDomException);
                                                                                                } else {
                                                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_READ_ONLY_ERROR")) {
                                                                                                        objGenerateException = companion.generateException(new ReadOnlyError(), str, getPublicKeyCredentialDomException);
                                                                                                    } else {
                                                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SECURITY_ERROR")) {
                                                                                                            objGenerateException = companion.generateException(new SecurityError(), str, getPublicKeyCredentialDomException);
                                                                                                        } else {
                                                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SYNTAX_ERROR")) {
                                                                                                                objGenerateException = companion.generateException(new SyntaxError(), str, getPublicKeyCredentialDomException);
                                                                                                            } else {
                                                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TIMEOUT_ERROR")) {
                                                                                                                    objGenerateException = companion.generateException(new TimeoutError(), str, getPublicKeyCredentialDomException);
                                                                                                                } else {
                                                                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TRANSACTION_INACTIVE_ERROR")) {
                                                                                                                        objGenerateException = companion.generateException(new TransactionInactiveError(), str, getPublicKeyCredentialDomException);
                                                                                                                    } else {
                                                                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_UNKNOWN_ERROR")) {
                                                                                                                            objGenerateException = companion.generateException(new UnknownError(), str, getPublicKeyCredentialDomException);
                                                                                                                        } else {
                                                                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_VERSION_ERROR")) {
                                                                                                                                objGenerateException = companion.generateException(new VersionError(), str, getPublicKeyCredentialDomException);
                                                                                                                            } else {
                                                                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_WRONG_DOCUMENT_ERROR")) {
                                                                                                                                    objGenerateException = companion.generateException(new WrongDocumentError(), str, getPublicKeyCredentialDomException);
                                                                                                                                } else {
                                                                                                                                    throw new FrameworkClassParsingException();
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return (GetCredentialException) objGenerateException;
            } catch (FrameworkClassParsingException unused) {
                return new GetCredentialCustomException(type, str);
            }
        }
    }
}
