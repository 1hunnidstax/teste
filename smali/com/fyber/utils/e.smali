.class public final Lcom/fyber/utils/e;
.super Ljava/lang/Object;
.source "FyberBaseUrlProvider.java"


# static fields
.field private static a:Lcom/fyber/utils/e;


# instance fields
.field private b:Lcom/fyber/utils/v;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/fyber/utils/e;

    invoke-direct {v0}, Lcom/fyber/utils/e;-><init>()V

    sput-object v0, Lcom/fyber/utils/e;->a:Lcom/fyber/utils/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/fyber/utils/e$1;

    invoke-direct {v0, p0}, Lcom/fyber/utils/e$1;-><init>(Lcom/fyber/utils/e;)V

    iput-object v0, p0, Lcom/fyber/utils/e;->c:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    sget-object v1, Lcom/fyber/utils/e;->a:Lcom/fyber/utils/e;

    .line 1042
    const/4 v0, 0x0

    .line 1043
    iget-object v2, v1, Lcom/fyber/utils/e;->b:Lcom/fyber/utils/v;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v0, v1, Lcom/fyber/utils/e;->b:Lcom/fyber/utils/v;

    invoke-interface {v0}, Lcom/fyber/utils/v;->a()Ljava/lang/String;

    move-result-object v0

    .line 1046
    :cond_0
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1047
    iget-object v0, v1, Lcom/fyber/utils/e;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    :cond_1
    return-object v0
.end method
