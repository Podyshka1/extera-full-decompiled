.class public final Lcom/google/android/recaptcha/RecaptchaAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/recaptcha/RecaptchaAction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/recaptcha/RecaptchaAction$Companion;

.field public static final LOGIN:Lcom/google/android/recaptcha/RecaptchaAction;

.field public static final SIGNUP:Lcom/google/android/recaptcha/RecaptchaAction;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/recaptcha/RecaptchaAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/recaptcha/RecaptchaAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/recaptcha/RecaptchaAction;->Companion:Lcom/google/android/recaptcha/RecaptchaAction$Companion;

    new-instance v0, Lcom/google/android/recaptcha/RecaptchaAction;

    const-string v1, "login"

    invoke-direct {v0, v1}, Lcom/google/android/recaptcha/RecaptchaAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/recaptcha/RecaptchaAction;->LOGIN:Lcom/google/android/recaptcha/RecaptchaAction;

    new-instance v0, Lcom/google/android/recaptcha/RecaptchaAction;

    const-string v1, "signup"

    invoke-direct {v0, v1}, Lcom/google/android/recaptcha/RecaptchaAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/recaptcha/RecaptchaAction;->SIGNUP:Lcom/google/android/recaptcha/RecaptchaAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/RecaptchaAction;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;ILjava/lang/Object;)Lcom/google/android/recaptcha/RecaptchaAction;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/RecaptchaAction;->copy(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p0

    return-object p0
.end method

.method public static final custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/RecaptchaAction;->Companion:Lcom/google/android/recaptcha/RecaptchaAction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/recaptcha/RecaptchaAction$Companion;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/RecaptchaAction;

    invoke-direct {v0, p1}, Lcom/google/android/recaptcha/RecaptchaAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/recaptcha/RecaptchaAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/recaptcha/RecaptchaAction;

    iget-object v1, p0, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecaptchaAction(action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/recaptcha/RecaptchaAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
