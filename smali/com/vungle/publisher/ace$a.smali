.class public abstract Lcom/vungle/publisher/ace$a;
.super Lcom/vungle/publisher/abg$c;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/vungle/publisher/cp",
        "<TT;TP;*>;O:",
        "Lcom/vungle/publisher/ace;",
        "T:",
        "Lcom/vungle/publisher/cq",
        "<TT;TP;*TA;>;A:",
        "Lcom/vungle/publisher/cj;",
        ">",
        "Lcom/vungle/publisher/abg$c",
        "<TO;>;"
    }
.end annotation


# instance fields
.field protected f:Lcom/vungle/publisher/abt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vungle/publisher/abg$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TO;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0}, Lcom/vungle/publisher/abg$c;->a()Lcom/vungle/publisher/abg;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ace;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->h()Lcom/vungle/publisher/cj;

    move-result-object v2

    .line 120
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->r()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->i:Ljava/lang/Long;

    .line 121
    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->j:Ljava/lang/String;

    .line 122
    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->w()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/ace;->k:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->l:Ljava/lang/Integer;

    .line 124
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->m:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->n:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->o:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/vungle/publisher/ace$a;->c()Lcom/vungle/publisher/acb$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->t()[Lcom/vungle/publisher/cp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/acb$a;->a([Lcom/vungle/publisher/cp;)[Lcom/vungle/publisher/acb;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->p:[Lcom/vungle/publisher/acb;

    .line 128
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->q:Ljava/util/List;

    .line 129
    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->f()Lcom/vungle/publisher/j;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->r:Lcom/vungle/publisher/j;

    .line 130
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->i()Lcom/vungle/publisher/ej;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/abt$a;->b(Ljava/util/Map;)Lcom/vungle/publisher/abt;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ace;->g:Lcom/vungle/publisher/abt;

    .line 132
    :cond_0
    return-object v0
.end method

.method protected abstract c()Lcom/vungle/publisher/acb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/acb$a",
            "<TP;**>;"
        }
    .end annotation
.end method
