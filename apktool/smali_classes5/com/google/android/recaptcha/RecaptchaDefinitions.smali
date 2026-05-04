.class public final Lcom/google/android/recaptcha/RecaptchaDefinitions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TIMEOUT_EXECUTE:J = 0x2710L

.field public static final DEFAULT_TIMEOUT_INIT:J = 0x2710L

.field public static final INSTANCE:Lcom/google/android/recaptcha/RecaptchaDefinitions;

.field public static final MIN_TIMEOUT_EXECUTE:J = 0x1388L

.field public static final MIN_TIMEOUT_INIT:J = 0x1388L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/RecaptchaDefinitions;

    invoke-direct {v0}, Lcom/google/android/recaptcha/RecaptchaDefinitions;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/RecaptchaDefinitions;->INSTANCE:Lcom/google/android/recaptcha/RecaptchaDefinitions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
