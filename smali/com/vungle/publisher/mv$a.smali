.class public abstract Lcom/vungle/publisher/mv$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/mv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/mv",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/publisher/mv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/vungle/publisher/lk;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/lk;",
            "Lcom/vungle/publisher/n;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/mv$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mv;

    .line 110
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/vungle/publisher/mv$a;->a()Lcom/vungle/publisher/mv;

    move-result-object v0

    .line 113
    :cond_0
    iput-object p3, v0, Lcom/vungle/publisher/mv;->e:Lcom/vungle/publisher/lk;

    iput-object p2, v0, Lcom/vungle/publisher/mv;->g:Ljava/lang/String;

    iput-object p4, v0, Lcom/vungle/publisher/mv;->h:Lcom/vungle/publisher/n;

    return-object v0
.end method

.method protected abstract b()Ljava/lang/String;
.end method
