.class public abstract Lcom/fyber/utils/a;
.super Ljava/lang/Object;
.source "AbstractClickthroughBrowserListener.java"

# interfaces
.implements Lcom/fyber/c/d/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected final a(Landroid/content/Context;Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .prologue
    .line 61
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 62
    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p2}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {p0}, Lcom/fyber/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t show error dialog. Not displayed error message is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected abstract a(Lcom/fyber/c/d/d;Lcom/fyber/c/a/a;Landroid/net/Uri;)V
.end method

.method public final a(Lcom/fyber/c/d/d;Lcom/fyber/c/a/a;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 27
    invoke-static {p3}, Lcom/fyber/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    .line 30
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/fyber/c/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/utils/a;->a(Lcom/fyber/c/d/d;Lcom/fyber/c/a/a;Landroid/net/Uri;)V

    .line 36
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    new-instance v4, Lcom/fyber/utils/a$1;

    invoke-direct {v4, p0, p1}, Lcom/fyber/utils/a$1;-><init>(Lcom/fyber/utils/a;Lcom/fyber/c/d/d;)V

    .line 1048
    new-instance v6, Lcom/fyber/utils/a$2;

    invoke-direct {v6, p0, p1}, Lcom/fyber/utils/a$2;-><init>(Lcom/fyber/utils/a;Lcom/fyber/c/d/d;)V

    .line 1055
    invoke-virtual {p1}, Lcom/fyber/c/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_ERROR:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v3, "Keep watching"

    const-string v5, "Close Video"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/fyber/utils/a;->a(Landroid/content/Context;Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method
