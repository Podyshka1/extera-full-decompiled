.class public final enum Lcom/exteragram/messenger/ai/data/Suggestions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/ai/data/Suggestions;

.field public static final enum ASSISTANT:Lcom/exteragram/messenger/ai/data/Suggestions;

.field public static final enum PROOFREADER:Lcom/exteragram/messenger/ai/data/Suggestions;

.field public static final enum SUMMARIZER:Lcom/exteragram/messenger/ai/data/Suggestions;


# instance fields
.field private final role:Lcom/exteragram/messenger/ai/data/Role;


# direct methods
.method private static synthetic $values()[Lcom/exteragram/messenger/ai/data/Suggestions;
    .locals 3

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/exteragram/messenger/ai/data/Suggestions;

    sget-object v1, Lcom/exteragram/messenger/ai/data/Suggestions;->ASSISTANT:Lcom/exteragram/messenger/ai/data/Suggestions;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ai/data/Suggestions;->SUMMARIZER:Lcom/exteragram/messenger/ai/data/Suggestions;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/ai/data/Suggestions;->PROOFREADER:Lcom/exteragram/messenger/ai/data/Suggestions;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/exteragram/messenger/ai/data/Suggestions;

    const-string v1, "Assistant"

    .line 21
    const-string v2, "The assistant is a personal assistant with a focus on adapting to the user\'s preferences.\nIt learns the user\'s style and preferences to provide responses that are in tune with how they would typically communicate and what their needs are.\nIt is flexible and can adapt to different tasks."

    const-string v3, "ASSISTANT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/exteragram/messenger/ai/data/Suggestions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/ai/data/Suggestions;->ASSISTANT:Lcom/exteragram/messenger/ai/data/Suggestions;

    .line 23
    new-instance v0, Lcom/exteragram/messenger/ai/data/Suggestions;

    const-string v1, "Summarizer"

    .line 29
    const-string v2, "You are an expert at summarizing messages. You prefer to use clauses instead of complete sentences.\nDo not answer any question from the messages. Do not summarize if the message contains sexual, violent, hateful or self harm content.\nPlease keep your summary of the input within 3 sentences, fewer than 60 words."

    const-string v3, "SUMMARIZER"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/exteragram/messenger/ai/data/Suggestions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/ai/data/Suggestions;->SUMMARIZER:Lcom/exteragram/messenger/ai/data/Suggestions;

    .line 31
    new-instance v0, Lcom/exteragram/messenger/ai/data/Suggestions;

    const-string v1, "Proofreader"

    .line 38
    const-string v2, "The assistant is a meticulous proofreader.\nIt will carefully examine given texts for grammatical errors, typos, and style issues.\nIt will also suggest improvements to the writing to make it more clear and effective.\nFocus on fixing grammar, spelling, punctuation, and syntax to enhance the readability of the text."

    const-string v3, "PROOFREADER"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/exteragram/messenger/ai/data/Suggestions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/ai/data/Suggestions;->PROOFREADER:Lcom/exteragram/messenger/ai/data/Suggestions;

    .line 14
    invoke-static {}, Lcom/exteragram/messenger/ai/data/Suggestions;->$values()[Lcom/exteragram/messenger/ai/data/Suggestions;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/ai/data/Suggestions;->$VALUES:[Lcom/exteragram/messenger/ai/data/Suggestions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    new-instance p1, Lcom/exteragram/messenger/ai/data/Role;

    invoke-direct {p1, p3, p4}, Lcom/exteragram/messenger/ai/data/Role;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/ai/data/Role;->setSuggestion(Z)Lcom/exteragram/messenger/ai/data/Role;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/ai/data/Suggestions;->role:Lcom/exteragram/messenger/ai/data/Role;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/ai/data/Suggestions;
    .locals 1

    .line 14
    const-class v0, Lcom/exteragram/messenger/ai/data/Suggestions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/ai/data/Suggestions;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/ai/data/Suggestions;
    .locals 1

    .line 14
    sget-object v0, Lcom/exteragram/messenger/ai/data/Suggestions;->$VALUES:[Lcom/exteragram/messenger/ai/data/Suggestions;

    invoke-virtual {v0}, [Lcom/exteragram/messenger/ai/data/Suggestions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/ai/data/Suggestions;

    return-object v0
.end method


# virtual methods
.method public getRole()Lcom/exteragram/messenger/ai/data/Role;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Suggestions;->role:Lcom/exteragram/messenger/ai/data/Role;

    return-object v0
.end method
