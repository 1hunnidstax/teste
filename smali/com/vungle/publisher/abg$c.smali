.class public abstract Lcom/vungle/publisher/abg$c;
.super Lcom/vungle/publisher/abw;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/abg;",
        ">",
        "Lcom/vungle/publisher/abw",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/abg$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/pv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/abg$b$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected e:Lcom/vungle/publisher/pu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/vungle/publisher/abw;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/abg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/vungle/publisher/abg$c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/abg;

    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/abg$c;->b:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg;->a:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/vungle/publisher/abg$c;->b:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg;->b:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/vungle/publisher/abg$c;->a:Lcom/vungle/publisher/abg$a$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/abg$a$a;->a()Lcom/vungle/publisher/abg$a;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg;->c:Lcom/vungle/publisher/abg$a;

    .line 84
    iget-object v1, p0, Lcom/vungle/publisher/abg$c;->d:Lcom/vungle/publisher/abg$b$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/abg$b$b;->a()Lcom/vungle/publisher/abg$b;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg;->d:Lcom/vungle/publisher/abg$b;

    .line 85
    iget-object v1, p0, Lcom/vungle/publisher/abg$c;->b:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg;->e:Ljava/lang/Boolean;

    .line 86
    iget-object v1, p0, Lcom/vungle/publisher/abg$c;->e:Lcom/vungle/publisher/pu;

    invoke-interface {v1}, Lcom/vungle/publisher/pu;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg;->f:Ljava/lang/String;

    .line 87
    return-object v0
.end method
