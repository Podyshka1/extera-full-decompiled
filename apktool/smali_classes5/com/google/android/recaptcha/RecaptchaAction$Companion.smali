.class public final Lcom/google/android/recaptcha/RecaptchaAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/recaptcha/RecaptchaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/recaptcha/RecaptchaAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;
    .locals 2

    new-instance v0, Lcom/google/android/recaptcha/RecaptchaAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/recaptcha/RecaptchaAction;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
