.class public Lcom/integralads/avid/library/inmobi/b;
.super Ljava/lang/Object;
.source "AvidContext.java"


# static fields
.field private static final a:Lcom/integralads/avid/library/inmobi/b;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/integralads/avid/library/inmobi/b;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/b;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/b;->a:Lcom/integralads/avid/library/inmobi/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/integralads/avid/library/inmobi/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/integralads/avid/library/inmobi/b;->a:Lcom/integralads/avid/library/inmobi/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/b;->b:Ljava/lang/String;

    .line 19
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "3.5.0"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "inmobi"

    return-object v0
.end method
