from setuptools import setup, find_packages

setup(
    name='apiverve_hashtaggenerator',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Hashtag Generator creates relevant hashtags from any plain text or post caption. Pass in a text snippet to receive an array of suggested social tags, with paid plans able to customize the tag count.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/hashtaggenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
