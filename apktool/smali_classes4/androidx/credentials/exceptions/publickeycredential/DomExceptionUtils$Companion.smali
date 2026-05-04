.class public final Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->generateException(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final generateException(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 148
    instance-of v0, p3, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    if-eqz v0, :cond_0

    .line 149
    new-instance p3, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    invoke-direct {p3, p1, p2}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V

    return-object p3

    .line 151
    :cond_0
    instance-of p3, p3, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;

    if-eqz p3, :cond_1

    .line 152
    new-instance p3, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;

    invoke-direct {p3, p1, p2}, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V

    return-object p3

    .line 155
    :cond_1
    new-instance p1, Landroidx/credentials/internal/FrameworkClassParsingException;

    invoke-direct {p1}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    throw p1
.end method
