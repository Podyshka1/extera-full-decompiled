.class public final enum Lcom/google/firebase/sessions/api/SessionSubscriber$Name;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/api/SessionSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

.field public static final enum CRASHLYTICS:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

.field public static final enum MATT_SAYS_HI:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

.field public static final enum PERFORMANCE:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;


# direct methods
.method private static final synthetic $values()[Lcom/google/firebase/sessions/api/SessionSubscriber$Name;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    sget-object v1, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->CRASHLYTICS:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->PERFORMANCE:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->MATT_SAYS_HI:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    const-string v1, "CRASHLYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->CRASHLYTICS:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    .line 26
    new-instance v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    const-string v1, "PERFORMANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->PERFORMANCE:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    .line 27
    new-instance v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    const-string v1, "MATT_SAYS_HI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->MATT_SAYS_HI:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-static {}, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->$values()[Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->$VALUES:[Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/sessions/api/SessionSubscriber$Name;
    .locals 1

    const-class v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 28
    check-cast p0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/sessions/api/SessionSubscriber$Name;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->$VALUES:[Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, [Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    return-object v0
.end method
