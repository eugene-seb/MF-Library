# Create the repo with submodules

### Steps to Create a Main Repository with Submodules:

#### 1- Create a Main Repository on GitHub.

#### 2- Clone the Main Repository Locally

#### 3- Add a Submodule (Sub-Repository):

`git submodule add https://github.com/your-username/SubRepo.git submodules/SubRepo`

Example of adding submodules to the main repo:

- `git submodule add https://github.com/eugene-seb/user-service.git submodules/user-service`
- `git submodule add https://github.com/eugene-seb/book-service.git submodules/book-service`
- `git submodule add https://github.com/eugene-seb/review-service.git submodules/review-service`
- `git submodule add https://github.com/eugene-seb/api-gateway.git submodules/api-gateway`
- `git submodule add https://github.com/eugene-seb/registry-service.git submodules/registry-service`

#### 4- Commit and Push Changes to GitHub:

`git add .gitmodules submodules/SubRepo`
`git commit -m "Added submodule"`
`git push origin main`

### Cloning the main repo with submodules

5- Cloning the Main Repository with Submodules:
git clone --recurse-submodules https://github.com/eugene-seb/MF-Library.git

### Bring changes on the main repo

6- Updating Submodules: If the submodule updates, run:
git submodule update --remote --merge

