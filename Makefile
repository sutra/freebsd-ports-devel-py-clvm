PORTNAME=	clvm
PORTVERSION=	0.9.7
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	zhoushuqun@gmail.com
COMMENT=	[Contract Language|Chia Lisp] Virtual Machine

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=	python
USE_PYTHON=	autoplist concurrent distutils

USE_GITHUB=	yes
GH_ACCOUNT=	Chia-Network

post-extract:
# Remove extraneous unused files to prevent confusion
	@${RM} ${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
