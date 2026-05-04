.class public final Lcom/google/firebase/sessions/InstallationId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/InstallationId$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/InstallationId$Companion;


# instance fields
.field private final authToken:Ljava/lang/String;

.field private final fid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/InstallationId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/InstallationId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/InstallationId;->Companion:Lcom/google/firebase/sessions/InstallationId$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/InstallationId;->fid:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/sessions/InstallationId;->authToken:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/sessions/InstallationId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAuthToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/firebase/sessions/InstallationId;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getFid()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/firebase/sessions/InstallationId;->fid:Ljava/lang/String;

    return-object v0
.end method
