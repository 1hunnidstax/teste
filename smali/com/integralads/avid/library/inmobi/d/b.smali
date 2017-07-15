.class public Lcom/integralads/avid/library/inmobi/d/b;
.super Ljava/lang/Object;
.source "AvidProcessorFactory.java"


# static fields
.field private static a:Lcom/integralads/avid/library/inmobi/d/b;


# instance fields
.field private b:Lcom/integralads/avid/library/inmobi/d/c;

.field private c:Lcom/integralads/avid/library/inmobi/d/d;

.field private d:Lcom/integralads/avid/library/inmobi/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/integralads/avid/library/inmobi/d/b;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/d/b;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/d/b;->a:Lcom/integralads/avid/library/inmobi/d/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/integralads/avid/library/inmobi/d/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/integralads/avid/library/inmobi/d/b;->a:Lcom/integralads/avid/library/inmobi/d/b;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/integralads/avid/library/inmobi/d/e;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->b:Lcom/integralads/avid/library/inmobi/d/c;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/integralads/avid/library/inmobi/d/c;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/d/c;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->b:Lcom/integralads/avid/library/inmobi/d/c;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->b:Lcom/integralads/avid/library/inmobi/d/c;

    return-object v0
.end method

.method public c()Lcom/integralads/avid/library/inmobi/d/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->c:Lcom/integralads/avid/library/inmobi/d/d;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/integralads/avid/library/inmobi/d/d;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/d/d;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->c:Lcom/integralads/avid/library/inmobi/d/d;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->c:Lcom/integralads/avid/library/inmobi/d/d;

    return-object v0
.end method

.method public d()Lcom/integralads/avid/library/inmobi/d/e;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->d:Lcom/integralads/avid/library/inmobi/d/a;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/integralads/avid/library/inmobi/d/a;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/d/a;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->d:Lcom/integralads/avid/library/inmobi/d/a;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/d/b;->d:Lcom/integralads/avid/library/inmobi/d/a;

    return-object v0
.end method
