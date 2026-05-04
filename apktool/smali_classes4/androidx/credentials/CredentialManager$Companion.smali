.class public final Landroidx/credentials/CredentialManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/credentials/CredentialManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/credentials/CredentialManager$Companion;

    invoke-direct {v0}, Landroidx/credentials/CredentialManager$Companion;-><init>()V

    sput-object v0, Landroidx/credentials/CredentialManager$Companion;->$$INSTANCE:Landroidx/credentials/CredentialManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroidx/credentials/CredentialManagerImpl;

    invoke-direct {v0, p1}, Landroidx/credentials/CredentialManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
