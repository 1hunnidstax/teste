.class public Lcom/integralads/avid/library/inmobi/a;
.super Ljava/lang/Object;
.source "AvidBridge.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-string v0, "(function () {\n  var avid = window.avid = {},\n    avidbridge = window.avidbridge = {};\n  avid.eventListeners = [];\n  avidbridge.avidAdSessionContext = {};\n  avid.getAvidAdSessionContext = function () {\n    var avidAdSessionContext = avidbridge.avidAdSessionContext;\n    avidAdSessionContext.avidApiLevel = \'2\';\n    return avidAdSessionContext;\n  };\n  avid.getHtmlVideoAvidAdSessionListener = function () {\n    throw \'The `HtmlVideoAvidAdSessionListener` is not available from the AVID JS stub. Please ensure you listen to the `loaded` event before calling `getHtmlVideoAvidAdSessionListener`.\';\n  };\n  avid.addEventListener = function (type, functionToExecute) {\n    avid.eventListeners.push({\n      \'type\': type,\n      \'functionToExecute\': functionToExecute\n    });\n  };\n  avidbridge.setAvidAdSessionContext = function (avidAdSessionContext) {\n    avidbridge.avidAdSessionContext = avidAdSessionContext;\n  };\n})();"

    const-string v1, "(?m)^\\s+"

    const-string v2, ""

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?m)^//.*(?=\\n)"

    const-string v2, ""

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/integralads/avid/library/inmobi/a;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sput-object p0, Lcom/integralads/avid/library/inmobi/a;->b:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/integralads/avid/library/inmobi/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/integralads/avid/library/inmobi/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/integralads/avid/library/inmobi/a;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/integralads/avid/library/inmobi/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    .line 45
    :cond_0
    sget-object v0, Lcom/integralads/avid/library/inmobi/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/integralads/avid/library/inmobi/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if(window.avidbridge!==undefined){avidbridge."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/integralads/avid/library/inmobi/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v0, "var script=document.createElement(\'script\');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);"

    const-string v1, "%SCRIPT_SRC%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p0, v0}, Lcom/integralads/avid/library/inmobi/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 71
    :cond_0
    return-void
.end method
