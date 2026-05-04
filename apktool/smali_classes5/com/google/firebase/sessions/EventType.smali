.class public final enum Lcom/google/firebase/sessions/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/json/NumberedEnum;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/firebase/sessions/EventType;

.field public static final enum EVENT_TYPE_UNKNOWN:Lcom/google/firebase/sessions/EventType;

.field public static final enum SESSION_START:Lcom/google/firebase/sessions/EventType;


# instance fields
.field private final number:I


# direct methods
.method private static final synthetic $values()[Lcom/google/firebase/sessions/EventType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/sessions/EventType;

    sget-object v1, Lcom/google/firebase/sessions/EventType;->EVENT_TYPE_UNKNOWN:Lcom/google/firebase/sessions/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/sessions/EventType;->SESSION_START:Lcom/google/firebase/sessions/EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/google/firebase/sessions/EventType;

    const-string v1, "EVENT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/EventType;->EVENT_TYPE_UNKNOWN:Lcom/google/firebase/sessions/EventType;

    .line 45
    new-instance v0, Lcom/google/firebase/sessions/EventType;

    const-string v1, "SESSION_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/sessions/EventType;->SESSION_START:Lcom/google/firebase/sessions/EventType;

    invoke-static {}, Lcom/google/firebase/sessions/EventType;->$values()[Lcom/google/firebase/sessions/EventType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/EventType;->$VALUES:[Lcom/google/firebase/sessions/EventType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/EventType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/firebase/sessions/EventType;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/sessions/EventType;
    .locals 1

    const-class v0, Lcom/google/firebase/sessions/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 46
    check-cast p0, Lcom/google/firebase/sessions/EventType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/sessions/EventType;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/EventType;->$VALUES:[Lcom/google/firebase/sessions/EventType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, [Lcom/google/firebase/sessions/EventType;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/firebase/sessions/EventType;->number:I

    return v0
.end method
