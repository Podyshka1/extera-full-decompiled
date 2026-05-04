.class public final enum Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

.field public static final enum FALLBACK:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

.field public static final enum GENERAL:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;


# direct methods
.method private static final synthetic $values()[Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    sget-object v1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->GENERAL:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->FALLBACK:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->GENERAL:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 73
    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    const-string v1, "FALLBACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->FALLBACK:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    invoke-static {}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->$values()[Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->$VALUES:[Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;
    .locals 1

    const-class v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 74
    check-cast p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->$VALUES:[Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, [Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    return-object v0
.end method
