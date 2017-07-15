.class public final Lcom/vungle/publisher/ael$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ael;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/pu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/vungle/publisher/ael;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/vungle/publisher/ael;

    invoke-direct {v0}, Lcom/vungle/publisher/ael;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/vungle/publisher/ael$a;->a:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ael;->a:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/vungle/publisher/ael$a;->a:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ael;->b:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/vungle/publisher/ael$a;->a:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ael;->c:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/vungle/publisher/ael$a;->b:Lcom/vungle/publisher/pu;

    invoke-interface {v1}, Lcom/vungle/publisher/pu;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ael;->d:Ljava/lang/String;

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ael;->e:Ljava/lang/Long;

    .line 65
    return-object v0
.end method
