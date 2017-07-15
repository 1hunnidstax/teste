.class abstract enum Lcom/inmobi/ads/ab$c;
.super Ljava/lang/Enum;
.source "NativeStrandAdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ab$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/ab$c;

.field public static final enum b:Lcom/inmobi/ads/ab$c;

.field public static final enum c:Lcom/inmobi/ads/ab$c;

.field public static final enum d:Lcom/inmobi/ads/ab$c;

.field private static final synthetic f:[Lcom/inmobi/ads/ab$c;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/inmobi/ads/ab$c$1;

    const-string v1, "STARTED"

    const-string v2, "Started"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/ab$c$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ab$c;->a:Lcom/inmobi/ads/ab$c;

    .line 256
    new-instance v0, Lcom/inmobi/ads/ab$c$2;

    const-string v1, "PAUSED"

    const-string v2, "Paused"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/ab$c$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ab$c;->b:Lcom/inmobi/ads/ab$c;

    .line 349
    new-instance v0, Lcom/inmobi/ads/ab$c$3;

    const-string v1, "STOPPED"

    const-string v2, "Stopped"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/ab$c$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ab$c;->c:Lcom/inmobi/ads/ab$c;

    .line 372
    new-instance v0, Lcom/inmobi/ads/ab$c$4;

    const-string v1, "DESTROYED"

    const-string v2, "Destroyed"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/ads/ab$c$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ab$c;->d:Lcom/inmobi/ads/ab$c;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/ads/ab$c;

    sget-object v1, Lcom/inmobi/ads/ab$c;->a:Lcom/inmobi/ads/ab$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ab$c;->b:Lcom/inmobi/ads/ab$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/ab$c;->c:Lcom/inmobi/ads/ab$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/ab$c;->d:Lcom/inmobi/ads/ab$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/ads/ab$c;->f:[Lcom/inmobi/ads/ab$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 385
    iput-object p3, p0, Lcom/inmobi/ads/ab$c;->e:Ljava/lang/String;

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/ab$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/ab$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ab$c;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/inmobi/ads/ab$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ab$c;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ab$c;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/inmobi/ads/ab$c;->f:[Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ab$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ab$c;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
.end method

.method a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4

    .prologue
    .line 418
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdLoad failed not handled for state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/inmobi/ads/ab;->f(Lcom/inmobi/ads/ab;)Lcom/inmobi/ads/ab$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/ab$c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method a(Lcom/inmobi/ads/ab;Z)V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 4

    .prologue
    .line 391
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be started from current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/inmobi/ads/ab;->f(Lcom/inmobi/ads/ab;)Lcom/inmobi/ads/ab$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/ab$c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method b(Lcom/inmobi/ads/ab;Z)V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 4

    .prologue
    .line 399
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be destroyed from current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/inmobi/ads/ab;->f(Lcom/inmobi/ads/ab;)Lcom/inmobi/ads/ab$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/ab$c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method d(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method e(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/ai;
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/inmobi/ads/ab$c;->e:Ljava/lang/String;

    return-object v0
.end method
