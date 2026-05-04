.class abstract Lorg/telegram/messenger/time/FastDateParser$Strategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Strategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/time/FastDateParser-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z
.end method

.method isNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
