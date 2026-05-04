.class public final Lcom/exteragram/messenger/utils/PasskeysUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/utils/PasskeysUtil;


# direct methods
.method public static synthetic $r8$lambda$Nu90vFe2L6FLwLizg_xNRMICWqA()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/exteragram/messenger/utils/PasskeysUtil;->showUnsupportedBulletin$lambda$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$m2kPc8Qu0Ao1F3Inm3ORDdR_hbg()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/exteragram/messenger/utils/PasskeysUtil;->showUnsupportedBulletin$lambda$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/utils/PasskeysUtil;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/PasskeysUtil;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/utils/PasskeysUtil;->INSTANCE:Lcom/exteragram/messenger/utils/PasskeysUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final computeClientDataHash(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "clientDataJSON"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 49
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "getBytes(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string v0, "digest(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final generateClientDataJSONRaw(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "webauthn.get"

    goto :goto_0

    :cond_0
    const-string p0, "webauthn.create"

    :goto_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 55
    const-string v0, "challenge"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 56
    const-string p1, "origin"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final openSettings(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 64
    sget-object v0, Landroidx/credentials/CredentialManager;->Companion:Landroidx/credentials/CredentialManager$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/CredentialManager$Companion;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Landroidx/credentials/CredentialManager;->createSettingsPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final showUnsupportedBulletin(Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    .line 39
    sget v1, Lorg/telegram/messenger/R$string;->PasskeyUnsupportedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    sget v2, Lorg/telegram/messenger/R$string;->PasskeyUnsupportedMessage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/exteragram/messenger/utils/PasskeysUtil$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/exteragram/messenger/utils/PasskeysUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    new-instance v4, Lcom/exteragram/messenger/utils/PasskeysUtil$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/exteragram/messenger/utils/PasskeysUtil$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 40
    invoke-static {v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleTags(Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const-string v0, "show(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final showUnsupportedBulletin$lambda$0()V
    .locals 2

    .line 42
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "https://github.com/bitwarden/android"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final showUnsupportedBulletin$lambda$1()V
    .locals 2

    .line 43
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "https://github.com/Kunzisoft/KeePassDX"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
